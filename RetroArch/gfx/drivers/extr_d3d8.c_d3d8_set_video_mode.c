
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int win32_show_cursor (int) ;

__attribute__((used)) static void d3d8_set_video_mode(void *data,
      unsigned width, unsigned height,
      bool fullscreen)
{

   win32_show_cursor(!fullscreen);

}
