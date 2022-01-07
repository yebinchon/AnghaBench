
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;



__attribute__((used)) static __inline void
mld_scrub_context(struct mbuf *m)
{
 m->m_pkthdr.rcvif = ((void*)0);
}
