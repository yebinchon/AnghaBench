
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int mbuf_svc_class_t ;
struct TYPE_4__ {int m_flags; } ;


 int MBUF_SC_BE ;
 int M_PKTHDR ;
 int m_get_service_class (TYPE_1__*) ;

mbuf_svc_class_t
mbuf_get_service_class(mbuf_t m)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (MBUF_SC_BE);

 return (m_get_service_class(m));
}
