
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int flags; int CallbackEXT; } ;
typedef TYPE_1__ exibus_priv ;
typedef int EXICallback ;


 int EXI_FLAG_ATTACH ;
 size_t IRQMASK (int ) ;
 int IRQ_EXI0_EXT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __UnmaskIrq (size_t) ;
 int __exi_clearirqs (size_t,int,int ,int ) ;
 int __exi_probe (size_t) ;
 TYPE_1__* eximap ;

__attribute__((used)) static s32 __exi_attach(s32 nChn,EXICallback ext_cb)
{
 s32 ret;
 u32 level;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);
 ret = 0;
 if(!(exi->flags&EXI_FLAG_ATTACH)) {
  if(__exi_probe(nChn)==1) {
   __exi_clearirqs(nChn,1,0,0);
   exi->CallbackEXT = ext_cb;
   __UnmaskIrq(((IRQMASK(IRQ_EXI0_EXT))>>(nChn*3)));
   exi->flags |= EXI_FLAG_ATTACH;
   ret = 1;
  }
 }
 _CPU_ISR_Restore(level);
 return ret;
}
