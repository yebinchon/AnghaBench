
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mptsub {int dummy; } ;
struct mptses {TYPE_2__* mpte_itfstats; int mpte_subflow_switches; } ;
struct TYPE_4__ {int switches; } ;
struct TYPE_3__ {int tcps_mp_switches; } ;


 int mptcp_get_statsindex (TYPE_2__*,struct mptsub const*) ;
 TYPE_1__ tcpstat ;

void
mptcpstats_inc_switch(struct mptses *mpte, const struct mptsub *mpts)
{
 int index;

 tcpstat.tcps_mp_switches++;
 mpte->mpte_subflow_switches++;

 index = mptcp_get_statsindex(mpte->mpte_itfstats, mpts);

 if (index != -1)
  mpte->mpte_itfstats[index].switches++;
}
