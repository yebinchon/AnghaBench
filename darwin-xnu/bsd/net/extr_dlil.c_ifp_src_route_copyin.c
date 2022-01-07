
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int dummy; } ;
struct ifnet {int if_cached_route_lock; int if_src_route; scalar_t__ if_fwd_cacheok; } ;


 int ROUTE_RELEASE (struct route*) ;
 int lck_mtx_convert_spin (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int route_copyin (struct route*,int *,int) ;

__attribute__((used)) static void
ifp_src_route_copyin(struct ifnet *ifp, struct route *src)
{
 lck_mtx_lock_spin(&ifp->if_cached_route_lock);
 lck_mtx_convert_spin(&ifp->if_cached_route_lock);

 if (ifp->if_fwd_cacheok) {
  route_copyin(src, &ifp->if_src_route, sizeof (*src));
 } else {
  ROUTE_RELEASE(src);
 }
 lck_mtx_unlock(&ifp->if_cached_route_lock);
}
