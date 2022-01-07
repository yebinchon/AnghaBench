
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct __gxfifo {int rdwt_dst; } ;
typedef int GXFifoObj ;



u32 GX_GetFifoCount(GXFifoObj *fifo)
{
 return ((struct __gxfifo*)fifo)->rdwt_dst;
}
