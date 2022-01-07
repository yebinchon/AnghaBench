
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ mbuf_traffic_class_t ;
typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 scalar_t__ MBUF_TC_MAX ;
 int M_PKTHDR ;
 int m_set_traffic_class (TYPE_1__*,scalar_t__) ;

errno_t
mbuf_set_traffic_class(mbuf_t m, mbuf_traffic_class_t tc)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR) ||
     ((u_int32_t)tc >= MBUF_TC_MAX))
  return (EINVAL);

 return (m_set_traffic_class(m, tc));
}
