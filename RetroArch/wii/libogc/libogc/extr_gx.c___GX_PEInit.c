
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQMASK (int ) ;
 int IRQ_PI_PEFINISH ;
 int IRQ_PI_PETOKEN ;
 int IRQ_Request (int ,int ,int *) ;
 int __GXFinishInterruptHandler ;
 int __GXTokenInterruptHandler ;
 int __UnmaskIrq (int ) ;
 int* _peReg ;

__attribute__((used)) static void __GX_PEInit()
{
 IRQ_Request(IRQ_PI_PETOKEN,__GXTokenInterruptHandler,((void*)0));
 __UnmaskIrq(IRQMASK(IRQ_PI_PETOKEN));

 IRQ_Request(IRQ_PI_PEFINISH,__GXFinishInterruptHandler,((void*)0));
 __UnmaskIrq(IRQMASK(IRQ_PI_PEFINISH));

 _peReg[5] = 0x0F;
}
