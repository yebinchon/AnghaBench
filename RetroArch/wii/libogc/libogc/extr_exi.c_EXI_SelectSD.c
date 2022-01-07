
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int flags; size_t lockeddev; int exi_idtime; } ;
typedef TYPE_1__ exibus_priv ;


 size_t EXI_CHANNEL_0 ;
 size_t EXI_CHANNEL_1 ;
 size_t EXI_CHANNEL_2 ;
 size_t EXI_DEVICE_0 ;
 int EXI_FLAG_ATTACH ;
 int EXI_FLAG_LOCKED ;
 int EXI_FLAG_SELECT ;
 size_t EXI_GetID (size_t,size_t,int*) ;
 int IRQMASK (int ) ;
 int IRQ_EXI0_EXT ;
 int IRQ_EXI1_EXT ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __MaskIrq (int ) ;
 size_t __exi_probe (size_t) ;
 int* _exiReg ;
 TYPE_1__* eximap ;

s32 EXI_SelectSD(s32 nChn,s32 nDev,s32 nFrq)
{
 u32 val,id;
 s32 ret;
 u32 level;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);

 if(exi->flags&EXI_FLAG_SELECT) {
  _CPU_ISR_Restore(level);
  return 0;
 }

 if(nChn!=EXI_CHANNEL_2) {
  if(nDev==EXI_DEVICE_0 && !(exi->flags&EXI_FLAG_ATTACH)) {
   if((ret=__exi_probe(nChn))==1) {
    if(!exi->exi_idtime) ret = EXI_GetID(nChn,EXI_DEVICE_0,&id);
   }
   if(ret==0) {
    _CPU_ISR_Restore(level);
    return 0;
   }
  }
  if(!(exi->flags&EXI_FLAG_LOCKED) || exi->lockeddev!=nDev) {
   _CPU_ISR_Restore(level);
   return 0;
  }
 }

 exi->flags |= EXI_FLAG_SELECT;
 val = _exiReg[nChn*5];
 val = (val&0x405)|(nFrq<<4);
 _exiReg[nChn*5] = val;

 if(exi->flags&EXI_FLAG_ATTACH) {
  if(nChn==EXI_CHANNEL_0) __MaskIrq(IRQMASK(IRQ_EXI0_EXT));
  else if(nChn==EXI_CHANNEL_1) __MaskIrq(IRQMASK(IRQ_EXI1_EXT));
 }

 _CPU_ISR_Restore(level);
 return 1;
}
