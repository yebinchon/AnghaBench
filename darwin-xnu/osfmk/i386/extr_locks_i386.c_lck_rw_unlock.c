
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lck_rw_type_t ;
typedef int lck_rw_t ;


 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ;
 scalar_t__ LCK_RW_TYPE_SHARED ;
 int lck_rw_unlock_exclusive (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int panic (char*,scalar_t__) ;

void
lck_rw_unlock(
 lck_rw_t *lck,
 lck_rw_type_t lck_rw_type)
{
 if (lck_rw_type == LCK_RW_TYPE_SHARED)
  lck_rw_unlock_shared(lck);
 else if (lck_rw_type == LCK_RW_TYPE_EXCLUSIVE)
  lck_rw_unlock_exclusive(lck);
 else
  panic("lck_rw_unlock(): Invalid RW lock type: %d\n", lck_rw_type);
}
