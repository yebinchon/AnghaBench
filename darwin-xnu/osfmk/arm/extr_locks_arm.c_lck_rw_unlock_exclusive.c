
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ lck_rw_type_t ;
struct TYPE_5__ {scalar_t__ lck_rw_owner; int lck_rw_data; } ;
typedef TYPE_1__ lck_rw_t ;


 scalar_t__ LCK_RW_TYPE_EXCLUSIVE ;
 int assertf (int,char*,int ,scalar_t__) ;
 scalar_t__ current_thread () ;
 scalar_t__ lck_rw_done (TYPE_1__*) ;
 int panic (char*,TYPE_1__*,scalar_t__) ;

void
lck_rw_unlock_exclusive(
 lck_rw_t *lck)
{
 lck_rw_type_t ret;

 assertf(lck->lck_rw_owner == current_thread(), "state=0x%x, owner=%p", lck->lck_rw_data, lck->lck_rw_owner);
 ret = lck_rw_done(lck);

 if (ret != LCK_RW_TYPE_EXCLUSIVE)
  panic("lck_rw_unlock_exclusive(): lock %p held in mode: %d", lck, ret);
}
