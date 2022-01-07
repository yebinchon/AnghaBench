
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gxfifo {int gpfifo_ready; int cpufifo_ready; int fifo_wrap; int lo_mark; int hi_mark; int rdwt_dst; int wt_ptr; int rd_ptr; int size; int buf_end; int buf_start; } ;
typedef int GXFifoObj ;


 int GX_Flush () ;
 int __GX_SaveFifo () ;
 int _cpufifo ;
 int _gxcpufifoready ;

void GX_GetCPUFifo(GXFifoObj *fifo)
{
 struct __gxfifo* ptr = (struct __gxfifo*)fifo;
 struct __gxfifo* cpufifo = (struct __gxfifo*)&_cpufifo;

 if(!_gxcpufifoready) return;

 GX_Flush();
 __GX_SaveFifo();

 ptr->buf_start = cpufifo->buf_start;
 ptr->buf_end = cpufifo->buf_end;
 ptr->size = cpufifo->size;
 ptr->rd_ptr = cpufifo->rd_ptr;
 ptr->wt_ptr = cpufifo->wt_ptr;
 ptr->rdwt_dst = cpufifo->rdwt_dst;
 ptr->hi_mark = cpufifo->hi_mark;
 ptr->lo_mark = cpufifo->lo_mark;
 ptr->fifo_wrap = cpufifo->fifo_wrap;
 ptr->cpufifo_ready = cpufifo->cpufifo_ready;
 ptr->gpfifo_ready = cpufifo->gpfifo_ready;
}
