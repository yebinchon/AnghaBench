
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtentry {int rt_flags; TYPE_4__* rt_ifa; TYPE_2__* rt_ifp; TYPE_1__* rt_parent; struct nstat_counts* rt_stats; } ;
struct nstat_counts {int nstat_connectsuccesses; int nstat_connectattempts; int nstat_min_rtt; } ;
struct netsrc_rep {int nrp_flags; int nrp_ifindex; int nrp_connection_successes; int nrp_connection_attempts; int nrp_min_rtt; } ;
struct TYPE_8__ {TYPE_3__* ifa_ifp; } ;
struct TYPE_7__ {int if_flags; } ;
struct TYPE_6__ {int if_eflags; int if_index; } ;
struct TYPE_5__ {struct nstat_counts* rt_stats; } ;


 int IFEF_AWDL ;
 int IFF_POINTOPOINT ;
 int NETSRC_FLAG_AWDL ;
 int NETSRC_FLAG_DIRECT ;
 int RTF_GATEWAY ;
 int RTF_LOCAL ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;

__attribute__((used)) static void
netsrc_common(struct rtentry *rt, struct netsrc_rep *reply)
{
 if (!rt) {
  return;
 }


 struct nstat_counts *rt_stats = rt->rt_stats;
 if (rt_stats) {
  reply->nrp_min_rtt = rt_stats->nstat_min_rtt;
  reply->nrp_connection_attempts = rt_stats->nstat_connectattempts;
  reply->nrp_connection_successes = rt_stats->nstat_connectsuccesses;
 }


 if (reply->nrp_min_rtt == 0) {

  RT_LOCK(rt);
  if (rt->rt_parent) {
   rt_stats = rt->rt_parent->rt_stats;
   if (rt_stats) {
    reply->nrp_min_rtt = rt_stats->nstat_min_rtt;
    reply->nrp_connection_attempts = rt_stats->nstat_connectattempts;
    reply->nrp_connection_successes = rt_stats->nstat_connectsuccesses;
   }
  }
  RT_UNLOCK(rt);
 }
 reply->nrp_ifindex = rt->rt_ifp ? rt->rt_ifp->if_index : 0;

 if (rt->rt_ifp->if_eflags & IFEF_AWDL) {
  reply->nrp_flags |= NETSRC_FLAG_AWDL;
 }
 if (rt->rt_flags & RTF_LOCAL) {
  reply->nrp_flags |= NETSRC_FLAG_DIRECT;
 } else if (!(rt->rt_flags & RTF_GATEWAY) &&
      (rt->rt_ifa && rt->rt_ifa->ifa_ifp &&
      !(rt->rt_ifa->ifa_ifp->if_flags & IFF_POINTOPOINT))) {
  reply->nrp_flags |= NETSRC_FLAG_DIRECT;
 }
}
