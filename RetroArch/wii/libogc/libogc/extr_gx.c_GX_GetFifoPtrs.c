
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __gxfifo {scalar_t__ wt_ptr; scalar_t__ rd_ptr; } ;
typedef int GXFifoObj ;



void GX_GetFifoPtrs(GXFifoObj *fifo,void **rd_ptr,void **wt_ptr)
{
 struct __gxfifo *ptr = (struct __gxfifo*)fifo;
 *rd_ptr = (void*)ptr->rd_ptr;
 *wt_ptr = (void*)ptr->wt_ptr;
}
