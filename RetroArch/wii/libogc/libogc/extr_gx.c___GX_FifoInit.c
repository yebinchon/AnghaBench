
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXFifoObj ;


 int IRQMASK (int ) ;
 int IRQ_PI_CP ;
 int IRQ_Request (int ,int ,int *) ;
 int LWP_GetSelf () ;
 int __GXCPInterruptHandler ;
 int __UnmaskIrq (int ) ;
 scalar_t__ _cpgplinked ;
 int _cpufifo ;
 int _gpfifo ;
 scalar_t__ _gxcpufifoready ;
 int _gxcurrentlwp ;
 scalar_t__ _gxgpfifoready ;
 scalar_t__ _gxoverflowsuspend ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void __GX_FifoInit()
{
 IRQ_Request(IRQ_PI_CP,__GXCPInterruptHandler,((void*)0));
 __UnmaskIrq(IRQMASK(IRQ_PI_CP));

 memset(&_cpufifo,0,sizeof(GXFifoObj));
 memset(&_gpfifo,0,sizeof(GXFifoObj));

 _gxcpufifoready = 0;
 _gxgpfifoready = 0;
 _cpgplinked = 0;
 _gxoverflowsuspend = 0;
 _gxcurrentlwp = LWP_GetSelf();
}
