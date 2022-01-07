
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef scalar_t__ mbuf_traffic_class_t ;
typedef int errno_t ;


 int EINVAL ;
 scalar_t__ MBUF_SCIDX (int ) ;
 int MBUF_TC2SCVAL (scalar_t__) ;
 scalar_t__ MBUF_TC_MAX ;
 int m_service_class_from_val (int ) ;

errno_t
mbuf_get_traffic_class_index(mbuf_traffic_class_t tc, u_int32_t *index)
{
 if (index == ((void*)0) || (u_int32_t)tc >= MBUF_TC_MAX)
  return (EINVAL);

 *index = MBUF_SCIDX(m_service_class_from_val(MBUF_TC2SCVAL(tc)));
 return (0);
}
