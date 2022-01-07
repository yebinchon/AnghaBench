
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route {int dummy; } ;
struct ifnet {int if_cached_route_lock; int if_src_route; } ;


 int lck_mtx_convert_spin (int *) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int route_copyout (struct route*,int *,int) ;

__attribute__((used)) static void
ifp_src_route_copyout(struct ifnet *ifp, struct route *dst)
{
 lck_mtx_lock_spin(&ifp->if_cached_route_lock);
 lck_mtx_convert_spin(&ifp->if_cached_route_lock);

 route_copyout(dst, &ifp->if_src_route, sizeof (*dst));

 lck_mtx_unlock(&ifp->if_cached_route_lock);
}
