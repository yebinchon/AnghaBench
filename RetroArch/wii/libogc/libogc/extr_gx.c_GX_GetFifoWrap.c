
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct __gxfifo {int fifo_wrap; } ;
typedef int GXFifoObj ;



u8 GX_GetFifoWrap(GXFifoObj *fifo)
{
 return ((struct __gxfifo*)fifo)->fifo_wrap;
}
