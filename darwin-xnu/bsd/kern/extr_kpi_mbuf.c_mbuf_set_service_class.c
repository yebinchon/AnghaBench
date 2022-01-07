
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int mbuf_svc_class_t ;
typedef int errno_t ;
struct TYPE_4__ {int m_flags; } ;


 int EINVAL ;
 int M_PKTHDR ;
 int m_set_service_class (TYPE_1__*,int ) ;

errno_t
mbuf_set_service_class(mbuf_t m, mbuf_svc_class_t sc)
{
 if (m == ((void*)0) || !(m->m_flags & M_PKTHDR))
  return (EINVAL);

 return (m_set_service_class(m, sc));
}
