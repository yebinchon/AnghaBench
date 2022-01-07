
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct route {int dummy; } ;


 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int rnh_lock ;
 int rtalloc_ign_common_locked (struct route*,int ,unsigned int) ;

void
rtalloc_scoped_ign(struct route *ro, uint32_t ignore, unsigned int ifscope)
{
 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_NOTOWNED);
 lck_mtx_lock(rnh_lock);
 rtalloc_ign_common_locked(ro, ignore, ifscope);
 lck_mtx_unlock(rnh_lock);
}
