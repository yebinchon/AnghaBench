
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lck_rw_owner; int lck_rw_want_upgrade; int lck_rw_want_excl; int lck_rw_shared_count; } ;
typedef TYPE_1__ lck_rw_t ;






 int THREAD_NULL ;
 int current_thread () ;
 int panic (char*,TYPE_1__*,char*,unsigned int) ;

void
lck_rw_assert(
 lck_rw_t *lck,
 unsigned int type)
{
 switch (type) {
 case 128:
  if ((lck->lck_rw_shared_count != 0) &&
      (lck->lck_rw_owner == THREAD_NULL)) {
   return;
  }
  break;
 case 131:
  if ((lck->lck_rw_want_excl || lck->lck_rw_want_upgrade) &&
   (lck->lck_rw_shared_count == 0) &&
      (lck->lck_rw_owner == current_thread())) {
   return;
  }
  break;
 case 130:
  if (lck->lck_rw_shared_count != 0)
   return;
  if ((lck->lck_rw_want_excl || lck->lck_rw_want_upgrade) &&
      (lck->lck_rw_owner == current_thread())) {
   return;
  }
  break;
 case 129:
  if ((lck->lck_rw_shared_count == 0) &&
     !(lck->lck_rw_want_excl || lck->lck_rw_want_upgrade) &&
      (lck->lck_rw_owner == THREAD_NULL)) {
   return;
  }
  break;
 default:
  break;
 }
 panic("rw lock (%p)%s held (mode=%u)", lck, (type == 129 ? "" : " not"), type);
}
