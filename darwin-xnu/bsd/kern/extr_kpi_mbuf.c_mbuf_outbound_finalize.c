
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int csum_flags; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;




 int in6_finalize_cksum (struct mbuf*,size_t,int,int,int ) ;
 int in_finalize_cksum (struct mbuf*,size_t,int ) ;

void
mbuf_outbound_finalize(struct mbuf *m, u_int32_t pf, size_t o)
{

 switch (pf) {
 case 129:
  (void) in_finalize_cksum(m, o, m->m_pkthdr.csum_flags);
  break;

 case 128:
  break;

 default:
  break;
 }
}
