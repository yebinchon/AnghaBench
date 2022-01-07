
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct _lck_mtx_ext_ {TYPE_1__* lck_mtx_grp; } ;
struct TYPE_2__ {int lck_grp_direct_wait; } ;


 int lck_mtx_inc_stats (int *) ;

__attribute__((used)) static void __inline__
lck_mtx_update_direct_wait(
 struct _lck_mtx_ext_ *lock)
{
 uint64_t* stat = &lock->lck_mtx_grp->lck_grp_direct_wait;
 lck_mtx_inc_stats(stat);
}
