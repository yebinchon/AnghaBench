
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int IM_MEM0 ;
 int IM_MEM1 ;
 int IM_MEM2 ;
 int IM_MEM3 ;
 int IM_MEMADDRESS ;
 int IRQ_MEM0 ;
 int IRQ_MEM1 ;
 int IRQ_MEM2 ;
 int IRQ_MEM3 ;
 int IRQ_MEMADDRESS ;
 int IRQ_Request (int ,int ,int *) ;
 int SYS_RegisterResetFunc (int *) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __MEMInterruptHandler ;
 int __MaskIrq (int) ;
 int __UnmaskIrq (int ) ;
 int* _memReg ;
 int mem_resetinfo ;

__attribute__((used)) static void __memprotect_init()
{
 u32 level;

 _CPU_ISR_Disable(level);

 __MaskIrq((IM_MEM0|IM_MEM1|IM_MEM2|IM_MEM3));

 _memReg[16] = 0;
 _memReg[8] = 255;

 IRQ_Request(IRQ_MEM0,__MEMInterruptHandler,((void*)0));
 IRQ_Request(IRQ_MEM1,__MEMInterruptHandler,((void*)0));
 IRQ_Request(IRQ_MEM2,__MEMInterruptHandler,((void*)0));
 IRQ_Request(IRQ_MEM3,__MEMInterruptHandler,((void*)0));
 IRQ_Request(IRQ_MEMADDRESS,__MEMInterruptHandler,((void*)0));

 SYS_RegisterResetFunc(&mem_resetinfo);
 __UnmaskIrq(IM_MEMADDRESS);

 _CPU_ISR_Restore(level);
}
