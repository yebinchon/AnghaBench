
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rtinit_locked (struct ifaddr*,int,int) ;

int
rtinit(struct ifaddr *ifa, int cmd, int flags)
{
 int error;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);

 lck_mtx_lock(rnh_lock);
 error = rtinit_locked(ifa, cmd, flags);
 lck_mtx_unlock(rnh_lock);

 return (error);
}
