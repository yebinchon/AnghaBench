
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lro_npkts; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;


 int ASSERT (int ) ;
 int lro_double_flushes ;
 int lro_flushes ;
 int lro_good_flushes ;
 int lro_single_flushes ;

__attribute__((used)) static void
lro_update_flush_stats(struct mbuf *m)
{
 lro_flushes++;
 switch(m->m_pkthdr.lro_npkts) {
 case 0: ASSERT(0);
 case 1: lro_single_flushes++;
  break;
 case 2: lro_double_flushes++;
  break;
 default: lro_good_flushes++;
  break;
 }
 return;
}
