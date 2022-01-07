
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gxfifo {int cpufifo_ready; int gpfifo_ready; int fifo_wrap; int lo_mark; int hi_mark; int rdwt_dst; int wt_ptr; int rd_ptr; int size; int buf_end; int buf_start; } ;
typedef int GXFifoObj ;


 int __GX_SaveFifo () ;
 int _gpfifo ;
 int _gxgpfifoready ;

void GX_GetGPFifo(GXFifoObj *fifo)
{
 struct __gxfifo* ptr = (struct __gxfifo*)fifo;
 struct __gxfifo* gpfifo = (struct __gxfifo*)&_gpfifo;

 if(!_gxgpfifoready) return;

 __GX_SaveFifo();

 ptr->buf_start = gpfifo->buf_start;
 ptr->buf_end = gpfifo->buf_end;
 ptr->size = gpfifo->size;
 ptr->rd_ptr = gpfifo->rd_ptr;
 ptr->wt_ptr = gpfifo->wt_ptr;
 ptr->rdwt_dst = gpfifo->rdwt_dst;
 ptr->hi_mark = gpfifo->hi_mark;
 ptr->lo_mark = gpfifo->lo_mark;
 ptr->fifo_wrap = gpfifo->fifo_wrap;
 ptr->gpfifo_ready = gpfifo->gpfifo_ready;
 ptr->cpufifo_ready = gpfifo->cpufifo_ready;
}
