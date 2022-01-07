
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IRQMASK (int ) ;
 int IRQ_DSP_ARAM ;
 int IRQ_Request (int ,int ,int *) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int* __ARBlockLen ;
 int __ARCheckSize () ;
 int * __ARDmaCallback ;
 int __ARFreeBlocks ;
 int __ARHandler ;
 int __ARInit_Flag ;
 int __ARStackPointer ;
 int __UnmaskIrq (int ) ;
 int* _dspReg ;

u32 AR_Init(u32 *stack_idx_array,u32 num_entries)
{
 u32 level;
 u32 aram_base = 0x4000;

 if(__ARInit_Flag) return aram_base;

 _CPU_ISR_Disable(level);

 __ARDmaCallback = ((void*)0);

 IRQ_Request(IRQ_DSP_ARAM,__ARHandler,((void*)0));
 __UnmaskIrq(IRQMASK(IRQ_DSP_ARAM));

 __ARStackPointer = aram_base;
 __ARFreeBlocks = num_entries;
 __ARBlockLen = stack_idx_array;
 _dspReg[13] = (_dspReg[13]&~0xff)|(_dspReg[13]&0xff);

 __ARCheckSize();
 __ARInit_Flag = 1;

 _CPU_ISR_Restore(level);
 return __ARStackPointer;
}
