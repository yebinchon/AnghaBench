
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int ifnet_t ;
typedef int errno_t ;


 int ifnet_lock_done (int ) ;
 int ifnet_lock_exclusive (int ) ;
 int ifnet_set_idle_flags_locked (int ,int ,int ) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;

errno_t
ifnet_set_idle_flags(ifnet_t ifp, u_int32_t new_flags, u_int32_t mask)
{
 errno_t err;

 lck_mtx_lock(rnh_lock);
 ifnet_lock_exclusive(ifp);
 err = ifnet_set_idle_flags_locked(ifp, new_flags, mask);
 ifnet_lock_done(ifp);
 lck_mtx_unlock(rnh_lock);

 return (err);
}
