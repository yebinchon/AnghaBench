
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct _lck_dev {int dev; int (* unlockcb ) (size_t,int) ;int node; } ;
typedef size_t s32 ;
struct TYPE_4__ {int flags; int lckd_dev_bits; int lckd_dev; int lck_cnt; } ;
typedef TYPE_1__ exibus_priv ;
typedef int (* EXICallback ) (size_t,int) ;


 int EXI_FLAG_LOCKED ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __exi_setinterrupts (size_t,TYPE_1__*) ;
 int __lwp_queue_appendI (int *,int *) ;
 scalar_t__ __lwp_queue_getI (int *) ;
 int _lckdev_queue ;
 TYPE_1__* eximap ;

s32 EXI_Unlock(s32 nChn)
{
 u32 level,dev;
 EXICallback cb;
 struct _lck_dev *lckd;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);
 if(!(exi->flags&EXI_FLAG_LOCKED)) {
  _CPU_ISR_Restore(level);
  return 0;
 }

 exi->flags &= ~EXI_FLAG_LOCKED;
 __exi_setinterrupts(nChn,exi);

 if(!exi->lck_cnt) {
  _CPU_ISR_Restore(level);
  return 1;
 }

 exi->lck_cnt--;
 lckd = (struct _lck_dev*)__lwp_queue_getI(&exi->lckd_dev);
 __lwp_queue_appendI(&_lckdev_queue,&lckd->node);

 cb = lckd->unlockcb;
 dev = lckd->dev;
 exi->lckd_dev_bits &= ~(1<<dev);
 if(cb) cb(nChn,dev);

 _CPU_ISR_Restore(level);
 return 1;
}
