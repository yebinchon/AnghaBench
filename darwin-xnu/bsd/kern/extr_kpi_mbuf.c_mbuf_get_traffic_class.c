
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbuf_traffic_class_t ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_4__ {int m_flags; } ;


 int MBUF_TC_BE ;
 int M_PKTHDR ;
 int m_get_traffic_class (TYPE_1__*) ;

mbuf_traffic_class_t
mbuf_get_traffic_class(mbuf_t m)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (MBUF_TC_BE);

 return (m_get_traffic_class(m));
}
