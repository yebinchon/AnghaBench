
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int g_resize_height ;
 unsigned int g_resize_width ;

__attribute__((used)) static void gfx_ctx_fpga_get_video_size(void *data,
      unsigned *width, unsigned *height)
{
   (void)data;

    *width = g_resize_width;
    *height = g_resize_height;
}
