
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lck_rw_type_t ;
typedef int lck_rw_t ;


 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ;
 scalar_t__ lck_rw_done (int *) ;
 int panic (char*,scalar_t__) ;

void
lck_rw_unlock_exclusive(
 lck_rw_t *lck)
{
 lck_rw_type_t ret;

 ret = lck_rw_done(lck);

 if (ret != LCK_RW_TYPE_EXCLUSIVE)
  panic("lck_rw_unlock_exclusive(): lock held in mode: %d\n", ret);
}
