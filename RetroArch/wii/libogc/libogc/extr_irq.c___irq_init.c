
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_handler_s {int dummy; } ;


 int CPU_MINIMUM_STACK_FRAME_SIZE ;
 int CPU_STACK_ALIGNMENT ;
 int IM_PI_ERROR ;
 int __MaskIrq (int) ;
 int __UnmaskIrq (int ) ;
 int __intrstack_addr ;
 int __intrstack_end ;
 int* _piReg ;
 scalar_t__ currIrqMask ;
 int g_IRQHandler ;
 int memset (int ,int ,int) ;
 int mtspr (int,int) ;
 scalar_t__ prevIrqMask ;

void __irq_init()
{
 register u32 intrStack = (u32)__intrstack_addr;
 register u32 intrStack_end = (u32)__intrstack_end;
 register u32 irqNestingLevel = 0;

 memset(g_IRQHandler,0,32*sizeof(struct irq_handler_s));

 *((u32*)intrStack_end) = 0xDEADBEEF;
 intrStack = intrStack - CPU_MINIMUM_STACK_FRAME_SIZE;
 intrStack &= ~(CPU_STACK_ALIGNMENT-1);
 *((u32*)intrStack) = 0;

 mtspr(272,irqNestingLevel);
 mtspr(273,intrStack);

 prevIrqMask = 0;
 currIrqMask = 0;
 _piReg[1] = 0xf0;

 __MaskIrq(-32);

 _piReg[0] = 0x01;
 __UnmaskIrq(IM_PI_ERROR);
}
