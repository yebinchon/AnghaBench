
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lck_type_t ;
struct TYPE_3__ {unsigned int lck_grp_spincnt; unsigned int lck_grp_mtxcnt; unsigned int lck_grp_rwcnt; } ;
typedef TYPE_1__ lck_grp_t ;





 int hw_atomic_add (unsigned int*,int) ;
 void panic (char*,int) ;

void
lck_grp_lckcnt_incr(
 lck_grp_t *grp,
 lck_type_t lck_type)
{
 unsigned int *lckcnt;

 switch (lck_type) {
 case 128:
  lckcnt = &grp->lck_grp_spincnt;
  break;
 case 130:
  lckcnt = &grp->lck_grp_mtxcnt;
  break;
 case 129:
  lckcnt = &grp->lck_grp_rwcnt;
  break;
 default:
  return panic("lck_grp_lckcnt_incr(): invalid lock type: %d\n", lck_type);
 }

 (void)hw_atomic_add(lckcnt, 1);
}
