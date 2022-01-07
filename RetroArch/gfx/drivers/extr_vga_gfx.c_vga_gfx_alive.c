
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vga_video_height ;
 int vga_video_width ;
 int video_driver_set_size (int *,int *) ;

__attribute__((used)) static bool vga_gfx_alive(void *data)
{
   (void)data;
   video_driver_set_size(&vga_video_width, &vga_video_height);
   return 1;
}
