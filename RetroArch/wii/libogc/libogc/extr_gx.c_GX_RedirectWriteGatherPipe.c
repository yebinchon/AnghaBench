
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gxfifo {int wt_ptr; } ;


 int GX_DISABLE ;
 int GX_FALSE ;
 int GX_Flush () ;
 int IsWriteGatherBufferEmpty () ;
 scalar_t__ MEM_PHYSICAL_TO_K0 (int) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __GX_FifoLink (int ) ;
 int __GX_WriteFifoIntEnable (int ,int ) ;
 scalar_t__ _cpgplinked ;
 int _cpufifo ;
 int* _piReg ;
 int _sync () ;
 int mtwpar (int) ;

volatile void* GX_RedirectWriteGatherPipe(void *ptr)
{
 u32 level;
 struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

 _CPU_ISR_Disable(level);
 GX_Flush();
 while(!IsWriteGatherBufferEmpty());

 mtwpar(0x0C008000);
 if(_cpgplinked) {
  __GX_FifoLink(GX_FALSE);
  __GX_WriteFifoIntEnable(GX_DISABLE,GX_DISABLE);
 }
 cpufifo->wt_ptr = (u32)MEM_PHYSICAL_TO_K0(_piReg[5]&~0x04000000);

 _piReg[3] = 0;
 _piReg[4] = 0x04000000;
 _piReg[5] = (((u32)ptr&0x3FFFFFE0)&~0x04000000);
 _sync();

 _CPU_ISR_Restore(level);

 return (volatile void*)0x0C008000;
}
