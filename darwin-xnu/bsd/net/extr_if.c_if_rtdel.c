
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; int rt_gateway; struct ifnet* rt_ifp; } ;
struct radix_node {int dummy; } ;
struct ifnet {int dummy; } ;


 int LOG_WARNING ;
 int RTF_UP ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int log (int ,char*,int) ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rtrequest_locked (int ,int ,int ,int ,int,int *) ;

__attribute__((used)) static int
if_rtdel(struct radix_node *rn, void *arg)
{
 struct rtentry *rt = (struct rtentry *)rn;
 struct ifnet *ifp = arg;
 int err;

 if (rt == ((void*)0))
  return (0);




 RT_LOCK(rt);
 if (rt->rt_ifp == ifp && (rt->rt_flags & RTF_UP)) {





  RT_UNLOCK(rt);
  err = rtrequest_locked(RTM_DELETE, rt_key(rt), rt->rt_gateway,
      rt_mask(rt), rt->rt_flags, ((void*)0));
  if (err) {
   log(LOG_WARNING, "if_rtdel: error %d\n", err);
  }
 } else {
  RT_UNLOCK(rt);
 }
 return (0);
}
