
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rtentry {int * rt_ifp; } ;
struct route {struct rtentry* ro_rt; int ro_dst; } ;


 int ROUTE_RELEASE_LOCKED (struct route*) ;
 int ROUTE_UNUSABLE (struct route*) ;
 int RT_GENID_SYNC (struct rtentry*) ;
 int RT_LOCK_ASSERT_NOTHELD (struct rtentry*) ;
 int RT_LOCK_SPIN (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 struct rtentry* rtalloc1_common_locked (int *,int,int ,unsigned int) ;

__attribute__((used)) static void
rtalloc_ign_common_locked(struct route *ro, uint32_t ignore,
    unsigned int ifscope)
{
 struct rtentry *rt;

 if ((rt = ro->ro_rt) != ((void*)0)) {
  RT_LOCK_SPIN(rt);
  if (rt->rt_ifp != ((void*)0) && !ROUTE_UNUSABLE(ro)) {
   RT_UNLOCK(rt);
   return;
  }
  RT_UNLOCK(rt);
  ROUTE_RELEASE_LOCKED(ro);
 }
 ro->ro_rt = rtalloc1_common_locked(&ro->ro_dst, 1, ignore, ifscope);
 if (ro->ro_rt != ((void*)0)) {
  RT_GENID_SYNC(ro->ro_rt);
  RT_LOCK_ASSERT_NOTHELD(ro->ro_rt);
 }
}
