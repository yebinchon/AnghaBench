
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ lck_rw_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_RW_INTERLOCK ;
 int LCK_RW_SHARED_MASK ;
 int LCK_RW_WANT_UPGRADE ;
 int TRUE ;
 int ordered_load (int *) ;

__attribute__((used)) static inline boolean_t
lck_rw_held_read_or_upgrade(lck_rw_t *lock)
{
 if (ordered_load(&lock->data) & (LCK_RW_SHARED_MASK | LCK_RW_INTERLOCK | LCK_RW_WANT_UPGRADE))
  return TRUE;
 return FALSE;
}
