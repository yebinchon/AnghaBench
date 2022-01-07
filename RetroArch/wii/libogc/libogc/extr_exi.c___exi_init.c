
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXI_ProbeReset () ;
 int IM_EXI ;
 int IRQ_EXI0_EXI ;
 int IRQ_EXI0_EXT ;
 int IRQ_EXI0_TC ;
 int IRQ_EXI1_EXI ;
 int IRQ_EXI1_EXT ;
 int IRQ_EXI1_TC ;
 int IRQ_EXI2_EXI ;
 int IRQ_EXI2_TC ;
 int IRQ_Request (int ,int ,int *) ;
 int __MaskIrq (int ) ;
 int __exi_initmap (int ) ;
 int __exi_irq_handler ;
 int __ext_irq_handler ;
 int __tc_irq_handler ;
 int* _exiReg ;
 int eximap ;

void __exi_init()
{
 __MaskIrq(IM_EXI);

 _exiReg[0] = 0;
 _exiReg[5] = 0;
 _exiReg[10] = 0;

 _exiReg[0] = 0x2000;

 __exi_initmap(eximap);

 IRQ_Request(IRQ_EXI0_EXI,__exi_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI0_TC,__tc_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI0_EXT,__ext_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI1_EXI,__exi_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI1_TC,__tc_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI1_EXT,__ext_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI2_EXI,__exi_irq_handler,((void*)0));
 IRQ_Request(IRQ_EXI2_TC,__tc_irq_handler,((void*)0));

 EXI_ProbeReset();
}
