
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lck_rw_type_t ;
typedef int lck_rw_t ;
typedef int boolean_t ;


 int FALSE ;
 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ;
 scalar_t__ LCK_RW_TYPE_SHARED ;
 int lck_rw_try_lock_exclusive (int *) ;
 int lck_rw_try_lock_shared (int *) ;
 int panic (char*,scalar_t__) ;

boolean_t
lck_rw_try_lock(
 lck_rw_t *lck,
 lck_rw_type_t lck_rw_type)
{
 if (lck_rw_type == LCK_RW_TYPE_SHARED)
  return lck_rw_try_lock_shared(lck);
 else if (lck_rw_type == LCK_RW_TYPE_EXCLUSIVE)
  return lck_rw_try_lock_exclusive(lck);
 else
  panic("lck_rw_try_lock(): Invalid rw lock type: %x", lck_rw_type);
 return FALSE;
}
