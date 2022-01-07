
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; } ;
struct rtentry {int dummy; } ;
struct ifnet {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int RT_REMREF_LOCKED (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ nd6_is_new_addr_neighbor (struct sockaddr_in6*,struct ifnet*) ;
 struct rtentry* nd6_lookup (int *,int ,struct ifnet*,int) ;
 int nd6_mutex ;

int
nd6_is_addr_neighbor(struct sockaddr_in6 *addr, struct ifnet *ifp,
    int rt_locked)
{
 struct rtentry *rt;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(nd6_mutex);
 if (nd6_is_new_addr_neighbor(addr, ifp)) {
  lck_mtx_unlock(nd6_mutex);
  return (1);
 }
 lck_mtx_unlock(nd6_mutex);





 if ((rt = nd6_lookup(&addr->sin6_addr, 0, ifp, rt_locked)) != ((void*)0)) {
  RT_LOCK_ASSERT_HELD(rt);
  RT_REMREF_LOCKED(rt);
  RT_UNLOCK(rt);
  return (1);
 }

 return (0);
}
