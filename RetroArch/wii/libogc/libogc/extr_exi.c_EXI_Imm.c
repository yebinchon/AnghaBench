
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef size_t s32 ;
struct TYPE_3__ {int flags; size_t imm_len; void* imm_buff; scalar_t__ CallbackTC; } ;
typedef TYPE_1__ exibus_priv ;
typedef scalar_t__ EXICallback ;


 int EXI_FLAG_DMA ;
 int EXI_FLAG_IMM ;
 int EXI_FLAG_SELECT ;
 size_t EXI_READ ;
 size_t EXI_WRITE ;
 int IRQMASK (scalar_t__) ;
 scalar_t__ IRQ_EXI0_TC ;
 int _CPU_ISR_Disable (size_t) ;
 int _CPU_ISR_Restore (size_t) ;
 int __UnmaskIrq (int ) ;
 int __exi_clearirqs (size_t,int ,int,int ) ;
 size_t* _exiReg ;
 TYPE_1__* eximap ;

s32 EXI_Imm(s32 nChn,void *pData,u32 nLen,u32 nMode,EXICallback tc_cb)
{
 u32 level;
 u32 value,i;
 exibus_priv *exi = &eximap[nChn];
 _CPU_ISR_Disable(level);

 if(exi->flags&(EXI_FLAG_DMA|EXI_FLAG_IMM) || !(exi->flags&EXI_FLAG_SELECT)) {
  _CPU_ISR_Restore(level);
  return 0;
 }

 exi->CallbackTC = tc_cb;
 if(tc_cb) {
  __exi_clearirqs(nChn,0,1,0);
  __UnmaskIrq(IRQMASK((IRQ_EXI0_TC+(nChn*3))));
 }
 exi->flags |= EXI_FLAG_IMM;

 exi->imm_buff = pData;
 exi->imm_len = nLen;
 if(nMode!=EXI_READ) {
  for(i=0,value=0;i<nLen;i++) value |= (((u8*)pData)[i])<<((3-i)*8);
  _exiReg[nChn*5+4] = value;
 }
 if(nMode==EXI_WRITE) exi->imm_len = 0;

 _exiReg[nChn*5+3] = (((nLen-1)&0x03)<<4)|((nMode&0x03)<<2)|0x01;

 _CPU_ISR_Restore(level);
 return 1;
}
