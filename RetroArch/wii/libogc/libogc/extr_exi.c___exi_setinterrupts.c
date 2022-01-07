
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t s32 ;
struct TYPE_4__ {int flags; scalar_t__ CallbackEXI; } ;
typedef TYPE_1__ exibus_priv ;


 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_1 ;
 size_t EXI_CHANNEL_2 ;
 int EXI_FLAG_LOCKED ;
 int IRQMASK (int ) ;
 int IRQ_EXI0_EXI ;
 int IRQ_EXI1_EXI ;
 int IRQ_EXI2_EXI ;
 scalar_t__ IRQ_GetHandler (int ) ;
 int IRQ_PI_DEBUG ;
 int __MaskIrq (int) ;
 int __UnmaskIrq (int) ;
 TYPE_1__* eximap ;

__attribute__((used)) static __inline__ void __exi_setinterrupts(s32 nChn,exibus_priv *exi)
{
 exibus_priv *pexi = &eximap[EXI_CHANNEL_2];
 if(nChn==EXI_CHANNEL_0) {
  __MaskIrq((IRQMASK(IRQ_EXI0_EXI)|IRQMASK(IRQ_EXI2_EXI)));
  if(!(exi->flags&EXI_FLAG_LOCKED) && (exi->CallbackEXI || pexi->CallbackEXI))
   __UnmaskIrq((IRQMASK(IRQ_EXI0_EXI)|IRQMASK(IRQ_EXI2_EXI)));
 } else if(nChn==EXI_CHANNEL_1) {
  __MaskIrq(IRQMASK(IRQ_EXI1_EXI));
  if(!(exi->flags&EXI_FLAG_LOCKED) && exi->CallbackEXI) __UnmaskIrq(IRQMASK(IRQ_EXI1_EXI));
 } else if(nChn==EXI_CHANNEL_2) {
  __MaskIrq(IRQMASK(IRQ_EXI0_EXI));
  if(!(exi->flags&EXI_FLAG_LOCKED) && IRQ_GetHandler(IRQ_PI_DEBUG)) __UnmaskIrq(IRQMASK(IRQ_EXI2_EXI));
 }
}
