
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ lck_rw_type_t ;
struct TYPE_6__ {scalar_t__ lck_rw_shared_count; } ;
typedef TYPE_1__ lck_rw_t ;


 scalar_t__ LCK_RW_TYPE_SHARED ;
 int assertf (int,char*,TYPE_1__*,scalar_t__) ;
 scalar_t__ lck_rw_done (TYPE_1__*) ;
 int panic (char*,TYPE_1__*,scalar_t__) ;

void
lck_rw_unlock_shared(
 lck_rw_t *lck)
{
 lck_rw_type_t ret;

 assertf(lck->lck_rw_shared_count > 0, "lck %p has shared_count=0x%x", lck, lck->lck_rw_shared_count);
 ret = lck_rw_done(lck);

 if (ret != LCK_RW_TYPE_SHARED)
  panic("lck_rw_unlock_shared(): lock %p held in mode: %d\n", lck, ret);
}
