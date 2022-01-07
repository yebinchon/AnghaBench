
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int lck_rw_shared_count; int lck_rw_want_upgrade; int lck_rw_want_write; } ;
typedef TYPE_1__ lck_rw_t ;






 int panic (char*,TYPE_1__*,char*,unsigned int,int ) ;

void
lck_rw_assert(
 lck_rw_t *lck,
 unsigned int type)
{
 switch (type) {
 case 128:
  if (lck->lck_rw_shared_count != 0) {
   return;
  }
  break;
 case 131:
  if ((lck->lck_rw_want_write ||
       lck->lck_rw_want_upgrade) &&
      lck->lck_rw_shared_count == 0) {
   return;
  }
  break;
 case 130:
  if (lck->lck_rw_want_write ||
      lck->lck_rw_want_upgrade ||
      lck->lck_rw_shared_count != 0) {
   return;
  }
  break;
 case 129:
  if (!(lck->lck_rw_want_write ||
     lck->lck_rw_want_upgrade ||
     lck->lck_rw_shared_count != 0)) {
   return;
  }
  break;
 default:
  break;
 }

 panic("rw lock (%p)%s held (mode=%u), first word %08x\n", lck, (type == 129 ? "" : " not"), type, *(uint32_t *)lck);
}
