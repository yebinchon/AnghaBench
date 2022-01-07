
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pkt_hdr; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;



__attribute__((used)) static void
frag6_scrub_context(struct mbuf *m)
{
 m->m_pkthdr.pkt_hdr = ((void*)0);
}
