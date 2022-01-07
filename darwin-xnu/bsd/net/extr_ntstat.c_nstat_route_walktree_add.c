
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; } ;
struct radix_node {int dummy; } ;
typedef int nstat_control_state ;
typedef int errno_t ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_UP ;
 int RT_ADDREF_LOCKED (struct rtentry*) ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int nstat_control_source_add (int ,int *,int *,struct rtentry*) ;
 int nstat_route_provider ;
 int rnh_lock ;
 scalar_t__ rt_validate (struct rtentry*) ;
 int rtfree_locked (struct rtentry*) ;

__attribute__((used)) static int
nstat_route_walktree_add(
 struct radix_node *rn,
 void *context)
{
 errno_t result = 0;
 struct rtentry *rt = (struct rtentry *)rn;
 nstat_control_state *state = (nstat_control_state*)context;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);


 if ((rt->rt_flags & RTF_UP) != 0)
 {

  RT_LOCK(rt);
  if (rt_validate(rt)) {
   RT_ADDREF_LOCKED(rt);
   RT_UNLOCK(rt);
  } else {
   RT_UNLOCK(rt);
   rt = ((void*)0);
  }


  if (rt == ((void*)0))
   return (0);

  result = nstat_control_source_add(0, state, &nstat_route_provider, rt);
  if (result != 0)
   rtfree_locked(rt);
 }

 return result;
}
