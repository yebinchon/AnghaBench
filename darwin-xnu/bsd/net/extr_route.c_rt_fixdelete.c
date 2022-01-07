
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; struct rtentry* rt_parent; } ;
struct radix_node {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_CLONING ;
 int RTF_PRCLONING ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int rnh_lock ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rtrequest_locked (int ,int ,int *,int ,int,int *) ;

__attribute__((used)) static int
rt_fixdelete(struct radix_node *rn, void *vp)
{
 struct rtentry *rt = (struct rtentry *)rn;
 struct rtentry *rt0 = vp;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);

 RT_LOCK(rt);
 if (rt->rt_parent == rt0 &&
     !(rt->rt_flags & (RTF_CLONING | RTF_PRCLONING))) {





  RT_UNLOCK(rt);
  return (rtrequest_locked(RTM_DELETE, rt_key(rt), ((void*)0),
      rt_mask(rt), rt->rt_flags, ((void*)0)));
 }
 RT_UNLOCK(rt);
 return (0);
}
