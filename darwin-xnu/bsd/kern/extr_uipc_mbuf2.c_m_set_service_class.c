
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_svc; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
typedef int mbuf_svc_class_t ;


 int EINVAL ;
 scalar_t__ MBUF_VALID_SC (int ) ;
 int M_PKTHDR ;
 int VERIFY (int) ;

int
m_set_service_class(struct mbuf *m, mbuf_svc_class_t sc)
{
 int error = 0;

 VERIFY(m->m_flags & M_PKTHDR);

 if (MBUF_VALID_SC(sc))
  m->m_pkthdr.pkt_svc = sc;
 else
  error = EINVAL;

 return (error);
}
