
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lck_grp_refcnt; } ;
typedef TYPE_1__ lck_grp_t ;


 scalar_t__ hw_atomic_sub (int *,int) ;
 int kfree (TYPE_1__*,int) ;

void
lck_grp_deallocate(
 lck_grp_t *grp)
{
 if (hw_atomic_sub(&grp->lck_grp_refcnt, 1) == 0)
   kfree(grp, sizeof(lck_grp_t));
}
