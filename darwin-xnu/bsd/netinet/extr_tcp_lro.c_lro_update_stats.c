
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lro_npkts; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_4__ {int tcps_lro_largepack; int tcps_lro_multpack; int tcps_lro_twopack; } ;


 TYPE_2__ tcpstat ;

__attribute__((used)) static void
lro_update_stats(struct mbuf *m)
{
 switch(m->m_pkthdr.lro_npkts) {
 case 0:
 case 1:
  break;

 case 2:
  tcpstat.tcps_lro_twopack++;
  break;

 case 3:
 case 4:
  tcpstat.tcps_lro_multpack++;
  break;

 default:
  tcpstat.tcps_lro_largepack++;
  break;
 }
 return;
}
