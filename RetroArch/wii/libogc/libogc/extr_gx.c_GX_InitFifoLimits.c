
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct __gxfifo {void* lo_mark; void* hi_mark; } ;
typedef int GXFifoObj ;



void GX_InitFifoLimits(GXFifoObj *fifo,u32 hiwatermark,u32 lowatermark)
{
 struct __gxfifo *ptr = (struct __gxfifo*)fifo;

 ptr->hi_mark = hiwatermark;
 ptr->lo_mark = lowatermark;
}
