
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct _lck_dev {size_t dev; int node; scalar_t__ unlockcb; } ;
typedef size_t s32 ;
struct TYPE_4__ {int flags; int lckd_dev_bits; size_t lockeddev; int lckd_dev; int lck_cnt; } ;
typedef TYPE_1__ exibus_priv ;
typedef scalar_t__ EXICallback ;


 int EXI_FLAG_LOCKED ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __exi_setinterrupts (size_t,TYPE_1__*) ;
 int __lwp_queue_appendI (int *,int *) ;
 scalar_t__ __lwp_queue_getI (int *) ;
 int _lckdev_queue ;
 TYPE_1__* eximap ;

s32 EXI_Lock(s32 nChn,s32 nDev,EXICallback unlockCB)
{
 u32 level;
 struct _lck_dev *lckd;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);
 if(exi->flags&EXI_FLAG_LOCKED) {
  if(unlockCB && !(exi->lckd_dev_bits&(1<<nDev))) {
   lckd = (struct _lck_dev*)__lwp_queue_getI(&_lckdev_queue);
   if(lckd) {
    exi->lck_cnt++;
    exi->lckd_dev_bits |= (1<<nDev);
    lckd->dev = nDev;
    lckd->unlockcb = unlockCB;
    __lwp_queue_appendI(&exi->lckd_dev,&lckd->node);
   }
  }
  _CPU_ISR_Restore(level);
  return 0;
 }

 exi->lockeddev = nDev;
 exi->flags |= EXI_FLAG_LOCKED;
 __exi_setinterrupts(nChn,exi);

 _CPU_ISR_Restore(level);
 return 1;
}
