
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; struct rtentry* rt_gwroute; } ;
struct route_event {int route_event_code; struct rtentry* rt; } ;
struct radix_node {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_GATEWAY ;
 int RTPRF_OURS ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int TRUE ;
 int rnh_lock ;
 int route_event_enqueue_nwk_wq_entry (struct rtentry*,struct rtentry*,int ,int *,int ) ;

int
route_event_walktree(struct radix_node *rn, void *arg)
{
 struct route_event *p_route_ev = (struct route_event *)arg;
 struct rtentry *rt = (struct rtentry *)rn;
 struct rtentry *gwrt = p_route_ev->rt;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);

 RT_LOCK(rt);


 if (rt->rt_flags & RTPRF_OURS) {
  RT_UNLOCK(rt);
  return (0);
 }


 if (!(rt->rt_flags & RTF_GATEWAY)) {
  RT_UNLOCK(rt);
  return (0);
 }

 if (rt->rt_gwroute != gwrt) {
  RT_UNLOCK(rt);
  return (0);
 }

 route_event_enqueue_nwk_wq_entry(rt, gwrt, p_route_ev->route_event_code,
     ((void*)0), TRUE);
 RT_UNLOCK(rt);

 return (0);
}
