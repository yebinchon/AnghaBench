
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lck_grp_refcnt; } ;
typedef TYPE_1__ lck_grp_t ;


 int hw_atomic_add (int *,int) ;

void
lck_grp_reference(
 lck_grp_t *grp)
{
 (void)hw_atomic_add(&grp->lck_grp_refcnt, 1);
}
