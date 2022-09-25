<%@page import="com.example.meal_ordering_system.entity.ShoppingCart" %>
<%@page import="com.example.meal_ordering_system.entity.Notice" %>
<%@page import="com.example.meal_ordering_system.dao.NoticeDao" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.List" %>
<%@page import="com.example.meal_ordering_system.dao.MenusDao" %>
<%@page import="com.example.meal_ordering_system.entity.Menus" %>
<%@ page import="com.example.meal_ordering_system.service.MenusService" %>
<%@ page import="com.example.meal_ordering_system.service.impl.MenusServiceImpl" %>
<%@page import="com.example.meal_ordering_system.dao.OrdersDao" %>
<%@page import="com.example.meal_ordering_system.entity.Orders" %>
<%@ page import="com.example.meal_ordering_system.service.OrdersService" %>
<%@ page import="com.example.meal_ordering_system.service.impl.OrdersServiceImpl" %>
<%@page language="java" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>猜你喜欢</title>
<meta content="" name=keywords />
<meta content="" name=description />
<link href="css/common.css" rel="stylesheet" type="text/css" />

</head>


<script type="text/javascript" src="js/common.js"></script>

 
<body >

<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" valign="top">
  
    
  <jsp:include flush="false" page="top.jsp"/>
    
    </td>
  </tr>
  <tr >
  <td height="50"></td>
  
</tr>
  
  <tr>
    <td align="center" valign="top" height="250">
    
    <table border="0" cellspacing="0"  width="100%">
    
		<tr>
		  <td  align="center" vlign="top"  >
			 <strong><span style="font-family: Helvetica, sans-serif;font-size: 20px;">
			      猜你喜欢
			 </span></strong>
			 <br>
		  </td>
		</tr>
        <c:set var="userid" scope="session" value="$${sessionScope.userid }"/>
       <c:choose>
           <c:when test="${userid==null}">
               下过一次订单系统就知道您喜欢什么了呦
           </c:when>
           <c:when test="${userid!=null}">
               <% int tuijian=(int) (1+Math.random()*(6));
                   session.setAttribute("tuijian", tuijian);%>
               <c:set var="test" scope="session" value="${tuijian}"/>
               <c:choose>
                   <c:when test="${test == 1}">
                       <div id="dingcanall2">

                           <div style="margin-top: 0px; padding: px;">
                               <div id="mm_01" class="dingcanall_connow">
                                   <table>
                                       <td style="margin-top: 10px;">
                                           <div>
                                               <table>
                                                   <tr>
                                                       <td rowspan="5" class="bookPic"><img
                                                               src="${pageContext.request.contextPath}/public/img/m_fenzhengrou.gif"
                                                               style="border: 1px solid #330000;"/>
                                                       </td>
                                                       <td><span>菜名:</span></td>
                                                       <td>
                                                           <span><strong>粉蒸肉</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>市场价格:</span></td>
                                                       <td><span>26</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>会员价格:</span></td>
                                                       <td><span><strong
                                                               style="color: #ff0000;">23</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>配料:</span></td>
                                                       <td><span>米粉、五花肉</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="2" style="height: 40px;"><a
                                                               href="${pageContext.request.contextPath}/orders/order_addshoppingcar?menuId=1"><img
                                                               src="${pageContext.request.contextPath}/public/qiantai/images/cart.png"
                                                               border="0" alt=""/></a></td>
                                                       <td></td>
                                                   </tr>
                                               </table>
                                           </div>
                                       </td>

                                   </table>
                               </div>
                           </div>
                       </div>
                       </div>
                   </c:when>
                   <c:when test="${test == 2}">
                       <div id="dingcanall2">

                           <div style="margin-top: 0px; padding: px;">
                               <div id="mm_02" class="dingcanall_connow">
                                   <table>
                                       <td style="margin-top: 10px;">
                                           <div>
                                               <table>
                                                   <tr>
                                                       <td rowspan="5" class="bookPic"><img
                                                               src="${pageContext.request.contextPath}/public/img/m_tangcupaigu.gif"
                                                               style="border: 1px solid #330000;"/>
                                                       </td>
                                                       <td><span>菜名:</span></td>
                                                       <td>
                                                           <span><strong>糖醋排骨</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>市场价格:</span></td>
                                                       <td><span>26</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>会员价格:</span></td>
                                                       <td><span><strong
                                                               style="color: #ff0000;">24</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>配料:</span></td>
                                                       <td><span>排骨、糖、醋</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="2" style="height: 40px;"><a
                                                               href="${pageContext.request.contextPath}/orders/order_addshoppingcar?menuId=2"><img
                                                               src="${pageContext.request.contextPath}/public/qiantai/images/cart.png"
                                                               border="0" alt=""/></a></td>
                                                       <td></td>
                                                   </tr>
                                               </table>
                                           </div>
                                       </td>

                                   </table>
                               </div>
                           </div>
                       </div>
                       </div>
                   </c:when>
                   <c:when test="${test == 3}">
                       <div id="dingcanall2">

                           <div style="margin-top: 0px; padding: px;">
                               <div id="mm_03" class="dingcanall_connow">
                                   <table>
                                       <td style="margin-top: 10px;">
                                           <div>
                                               <table>
                                                   <tr>
                                                       <td rowspan="5" class="bookPic"><img
                                                               src="${pageContext.request.contextPath}/public/img/m_xianroucaifan.gif"
                                                               style="border: 1px solid #330000;"/>
                                                       </td>
                                                       <td><span>菜名:</span></td>
                                                       <td>
                                                           <span><strong>咸肉菜饭</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>市场价格:</span></td>
                                                       <td><span>15</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>会员价格:</span></td>
                                                       <td><span><strong
                                                               style="color: #ff0000;">12</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>配料:</span></td>
                                                       <td><span>咸肉、米饭</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="2" style="height: 40px;"><a
                                                               href="${pageContext.request.contextPath}/orders/order_addshoppingcar?menuId=3"><img
                                                               src="${pageContext.request.contextPath}/public/qiantai/images/cart.png"
                                                               border="0" alt=""/></a></td>
                                                       <td></td>
                                                   </tr>
                                               </table>
                                           </div>
                                       </td>

                                   </table>
                               </div>
                           </div>
                       </div>
                       </div>
                   </c:when>
                   <c:when test="${test == 4}">
                       <div id="dingcanall2">

                           <div style="margin-top: 0px; padding: px;">
                               <div id="mm_04" class="dingcanall_connow">
                                   <table>
                                       <td style="margin-top: 10px;">
                                           <div>
                                               <table>
                                                   <tr>
                                                       <td rowspan="5" class="bookPic"><img
                                                               src="${pageContext.request.contextPath}/public/img/m_wuxianglvrou.gif"
                                                               style="border: 1px solid #330000;"/>
                                                       </td>
                                                       <td><span>菜名:</span></td>
                                                       <td>
                                                           <span><strong>五香驴肉</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>市场价格:</span></td>
                                                       <td><span>25</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>会员价格:</span></td>
                                                       <td><span><strong
                                                               style="color: #ff0000;">21</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>配料:</span></td>
                                                       <td><span>驴肉</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="2" style="height: 40px;"><a
                                                               href="${pageContext.request.contextPath}/orders/order_addshoppingcar?menuId=4"><img
                                                               src="${pageContext.request.contextPath}/public/qiantai/images/cart.png"
                                                               border="0" alt=""/></a></td>
                                                       <td></td>
                                                   </tr>
                                               </table>
                                           </div>
                                       </td>

                                   </table>
                               </div>
                           </div>
                       </div>
                       </div>
                   </c:when>
                   <c:when test="${test == 5}">
                       <div id="dingcanall2">

                           <div style="margin-top: 0px; padding: px;">
                               <div id="mm_05" class="dingcanall_connow">
                                   <table>
                                       <td style="margin-top: 10px;">
                                           <div>
                                               <table>
                                                   <tr>
                                                       <td rowspan="5" class="bookPic"><img
                                                               src="${pageContext.request.contextPath}/public/img/m_huanggualapi.gif"
                                                               style="border: 1px solid #330000;"/>
                                                       </td>
                                                       <td><span>菜名:</span></td>
                                                       <td>
                                                           <span><strong>黄瓜拉皮</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>市场价格:</span></td>
                                                       <td><span>8</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>会员价格:</span></td>
                                                       <td><span><strong
                                                               style="color: #ff0000;">6</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>配料:</span></td>
                                                       <td><span>黄瓜、拉皮</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="2" style="height: 40px;"><a
                                                               href="${pageContext.request.contextPath}/orders/order_addshoppingcar?menuId=5"><img
                                                               src="${pageContext.request.contextPath}/public/qiantai/images/cart.png"
                                                               border="0" alt=""/></a></td>
                                                       <td></td>
                                                   </tr>
                                               </table>
                                           </div>
                                       </td>

                                   </table>
                               </div>
                           </div>
                       </div>
                       </div>
                   </c:when>
                   <c:when test="${test == 6}">
                       <div id="dingcanall2">

                           <div style="margin-top: 0px; padding: px;">
                               <div id="mm_06" class="dingcanall_connow">
                                   <table>
                                       <td style="margin-top: 10px;">
                                           <div>
                                               <table>
                                                   <tr>
                                                       <td rowspan="5" class="bookPic"><img
                                                               src="${pageContext.request.contextPath}/public/img/m_shuizhuyu.gif"
                                                               style="border: 1px solid #330000;"/>
                                                       </td>
                                                       <td><span>菜名:</span></td>
                                                       <td>
                                                           <span><strong>水煮鱼</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>市场价格:</span></td>
                                                       <td><span>38</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>会员价格:</span></td>
                                                       <td><span><strong
                                                               style="color: #ff0000;">32</strong></span>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><span>配料:</span></td>
                                                       <td><span>鱼，辣椒</span></td>
                                                   </tr>
                                                   <tr>
                                                       <td colspan="2" style="height: 40px;"><a
                                                               href="${pageContext.request.contextPath}/orders/order_addshoppingcar?menuId=6"><img
                                                               src="${pageContext.request.contextPath}/public/qiantai/images/cart.png"
                                                               border="0" alt=""/></a></td>
                                                       <td></td>
                                                   </tr>
                                               </table>
                                           </div>
                                       </td>

                                   </table>
                               </div>
                           </div>
                       </div>
                       </div>
                   </c:when>
               </c:choose>
           </c:when>

       </c:choose>

        <tr>
		  <td  align="center"  >
			 <a href="index.jsp" target="_self">
			 <span style="font-family: Helvetica, sans-serif;font-size: 16px;">
			     返回
			 </span></a>
		  </td>
		</tr>	
   </table>
 
 
    
    
    
     </td>
  </tr>
  <tr>
    <td height="10">&nbsp;</td>
  </tr>
  <tr>
    <td height="50" align="center" valign="middle">&nbsp; 
   
        <jsp:include flush="false" page="copyright.jsp"/>
    </td>
  </tr>
  
</table>


 
</body>
</html>
