
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mptsub {int mpts_socket; } ;
struct mptcp_itf_stats {int mpis_rxbytes; int mpis_txbytes; } ;
struct inpcb {TYPE_1__* inp_stat; } ;
struct TYPE_2__ {scalar_t__ rxbytes; scalar_t__ txbytes; } ;


 int mptcp_get_statsindex (struct mptcp_itf_stats*,struct mptsub*) ;
 struct inpcb* sotoinpcb (int ) ;

void
mptcpstats_update(struct mptcp_itf_stats *stats, struct mptsub *mpts)
{
 int index = mptcp_get_statsindex(stats, mpts);

 if (index != -1) {
  struct inpcb *inp = sotoinpcb(mpts->mpts_socket);

  stats[index].mpis_txbytes += inp->inp_stat->txbytes;
  stats[index].mpis_rxbytes += inp->inp_stat->rxbytes;
 }
}
