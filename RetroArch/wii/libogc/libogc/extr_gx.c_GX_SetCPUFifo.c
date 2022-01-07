
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gxfifo {int gpfifo_ready; int cpufifo_ready; int wt_ptr; int buf_end; int buf_start; int fifo_wrap; int rdwt_dst; int rd_ptr; int lo_mark; int hi_mark; int size; } ;
typedef int GXFifoObj ;


 int GX_DISABLE ;
 int GX_ENABLE ;
 int GX_FALSE ;
 int GX_TRUE ;
 int MEM_VIRTUAL_TO_PHYSICAL (int ) ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 scalar_t__ __GX_CPGPLinkCheck () ;
 int __GX_FifoLink (int ) ;
 int __GX_WriteFifoIntEnable (int ,int ) ;
 int __GX_WriteFifoIntReset (int ,int ) ;
 int _cpgplinked ;
 int _cpufifo ;
 int _gxcpufifoready ;
 int* _piReg ;
 int ppcsync () ;

void GX_SetCPUFifo(GXFifoObj *fifo)
{
 u32 level;
 struct __gxfifo *ptr = (struct __gxfifo*)fifo;
 struct __gxfifo *cpufifo = (struct __gxfifo*)&_cpufifo;

 _CPU_ISR_Disable(level);
 if(!fifo) {
  _gxcpufifoready = 0;
  _cpgplinked = 0;
  cpufifo->gpfifo_ready = 0;
  cpufifo->cpufifo_ready = 0;
  _CPU_ISR_Restore(level);
  return;
 }

 cpufifo->buf_start = ptr->buf_start;
 cpufifo->buf_end = ptr->buf_end;
 cpufifo->size = ptr->size;
 cpufifo->hi_mark = ptr->hi_mark;
 cpufifo->lo_mark = ptr->lo_mark;
 cpufifo->rd_ptr = ptr->rd_ptr;
 cpufifo->wt_ptr = ptr->wt_ptr;
 cpufifo->rdwt_dst = ptr->rdwt_dst;
 cpufifo->fifo_wrap = ptr->fifo_wrap;
 cpufifo->gpfifo_ready = ptr->gpfifo_ready;
 cpufifo->cpufifo_ready = 1;

 _gxcpufifoready = 1;
 if(__GX_CPGPLinkCheck()) {
  _cpgplinked = 1;
  cpufifo->gpfifo_ready = 1;

  _piReg[3] = MEM_VIRTUAL_TO_PHYSICAL(cpufifo->buf_start);
  _piReg[4] = MEM_VIRTUAL_TO_PHYSICAL(cpufifo->buf_end);
  _piReg[5] = (cpufifo->wt_ptr&0x1FFFFFE0);

  __GX_WriteFifoIntReset(GX_TRUE,GX_TRUE);
  __GX_WriteFifoIntEnable(GX_ENABLE,GX_DISABLE);
  __GX_FifoLink(GX_TRUE);

  _CPU_ISR_Restore(level);
  return;
 }

 if(_cpgplinked) {
  __GX_FifoLink(GX_FALSE);
  _cpgplinked = 0;
 }

 __GX_WriteFifoIntEnable(GX_DISABLE,GX_DISABLE);

 _piReg[3] = MEM_VIRTUAL_TO_PHYSICAL(cpufifo->buf_start);
 _piReg[4] = MEM_VIRTUAL_TO_PHYSICAL(cpufifo->buf_end);
 _piReg[5] = (cpufifo->wt_ptr&0x1FFFFFE0);
 ppcsync();

 _CPU_ISR_Restore(level);
}
