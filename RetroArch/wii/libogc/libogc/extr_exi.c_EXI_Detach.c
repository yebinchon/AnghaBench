
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int flags; scalar_t__ lockeddev; } ;
typedef TYPE_1__ exibus_priv ;


 scalar_t__ EXI_DEVICE_0 ;
 int EXI_FLAG_ATTACH ;
 int EXI_FLAG_LOCKED ;
 size_t IRQMASK (int ) ;
 int IRQ_EXI0_EXI ;
 int IRQ_EXI0_EXT ;
 int IRQ_EXI0_TC ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __MaskIrq (size_t) ;
 TYPE_1__* eximap ;

s32 EXI_Detach(s32 nChn)
{
 u32 level;
 s32 ret = 1;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);
 if(exi->flags&EXI_FLAG_ATTACH) {
  if(exi->flags&EXI_FLAG_LOCKED && exi->lockeddev!=EXI_DEVICE_0) ret = 0;
  else {
   exi->flags &= ~EXI_FLAG_ATTACH;
   __MaskIrq(((IRQMASK(IRQ_EXI0_EXI)|IRQMASK(IRQ_EXI0_TC)|IRQMASK(IRQ_EXI0_EXT))>>(nChn*3)));
  }
 }
 _CPU_ISR_Restore(level);
 return ret;
}
