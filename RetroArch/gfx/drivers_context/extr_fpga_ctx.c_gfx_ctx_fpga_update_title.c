
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int title ;


 int video_driver_get_window_title (char*,int) ;

__attribute__((used)) static void gfx_ctx_fpga_update_title(void *data, void *data2)
{
   char title[128];

   title[0] = '\0';

   video_driver_get_window_title(title, sizeof(title));
}
