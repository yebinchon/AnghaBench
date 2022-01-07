
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct route {int dummy; } ;


 int IFSCOPE_NONE ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rtalloc_ign_common_locked (struct route*,int ,int ) ;

void
rtalloc_ign(struct route *ro, uint32_t ignore)
{
 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(rnh_lock);
 rtalloc_ign_common_locked(ro, ignore, IFSCOPE_NONE);
 lck_mtx_unlock(rnh_lock);
}
