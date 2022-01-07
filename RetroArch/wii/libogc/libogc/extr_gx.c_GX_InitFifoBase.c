
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gxfifo {int buf_start; int buf_end; int size; scalar_t__ rdwt_dst; } ;
typedef int GXFifoObj ;


 scalar_t__ GX_FIFO_HIWATERMARK ;
 int GX_FIFO_MINSIZE ;
 int GX_InitFifoLimits (int *,scalar_t__,int) ;
 int GX_InitFifoPtrs (int *,void*,void*) ;

void GX_InitFifoBase(GXFifoObj *fifo,void *base,u32 size)
{
 struct __gxfifo *ptr = (struct __gxfifo*)fifo;

 if(!ptr || size<GX_FIFO_MINSIZE) return;

 ptr->buf_start = (u32)base;
 ptr->buf_end = (u32)base + size - 4;
 ptr->size = size;
 ptr->rdwt_dst = 0;

 GX_InitFifoLimits(fifo,(size-GX_FIFO_HIWATERMARK),((size>>1)&0x7fffffe0));
 GX_InitFifoPtrs(fifo,base,base);
}
