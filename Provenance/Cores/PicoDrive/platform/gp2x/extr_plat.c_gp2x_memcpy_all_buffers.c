
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gp2x_memcpy_buffers (int,void*,int,int) ;

void gp2x_memcpy_all_buffers(void *data, int offset, int len)
{
 gp2x_memcpy_buffers(0xf, data, offset, len);
}
