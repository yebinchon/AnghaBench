
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __console_init (void*,int,int,int,int,int) ;

void CON_Init(void *framebuffer,int xstart,int ystart,int xres,int yres,int stride)
{
 __console_init(framebuffer,xstart,ystart,xres,yres,stride);
}
