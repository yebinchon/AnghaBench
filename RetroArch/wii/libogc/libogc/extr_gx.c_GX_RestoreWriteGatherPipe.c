
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct __gxfifo {scalar_t__ wt_ptr; int buf_end; int buf_start; } ;
struct TYPE_2__ {scalar_t__ U32; } ;


 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_TRUE ;
 int IsWriteGatherBufferEmpty () ;
 int MEM_VIRTUAL_TO_PHYSICAL (int ) ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int __GX_FifoLink (int ) ;
 int __GX_WriteFifoIntEnable (int ,int ) ;
 int __GX_WriteFifoIntReset (int ,int ) ;
 scalar_t__ _cpgplinked ;
 int _cpufifo ;
 int* _piReg ;
 int mtwpar (int) ;
 int ppcsync () ;
 TYPE_1__* wgPipe ;

void GX_RestoreWriteGatherPipe()
{
 u32 level;
 struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

 _CPU_ISR_Disable(level);

 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;
 wgPipe->U32 = 0;

 ppcsync();
 while(!IsWriteGatherBufferEmpty());

 mtwpar(0x0C008000);
 _piReg[3] = MEM_VIRTUAL_TO_PHYSICAL(cpufifo->buf_start);
 _piReg[4] = MEM_VIRTUAL_TO_PHYSICAL(cpufifo->buf_end);
 _piReg[5] = (((u32)cpufifo->wt_ptr&0x3FFFFFE0)&~0x04000000);
 if(_cpgplinked) {
  __GX_WriteFifoIntReset(GX_TRUE,GX_TRUE);
  __GX_WriteFifoIntEnable(GX_ENABLE,GX_DISABLE);
  __GX_FifoLink(GX_TRUE);
 }
 _CPU_ISR_Restore(level);
}
