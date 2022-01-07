
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* quit; int* resize; unsigned int* width; unsigned int* height; } ;
typedef TYPE_1__ gfx_ctx_size_t ;


 int video_context_driver_check_window (TYPE_1__*) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static bool fpga_gfx_alive(void *data)
{
   gfx_ctx_size_t size_data;
   unsigned temp_width = 0;
   unsigned temp_height = 0;
   bool quit = 0;
   bool resize = 0;


   video_driver_get_size(&temp_width, &temp_height);

   size_data.quit = &quit;
   size_data.resize = &resize;
   size_data.width = &temp_width;
   size_data.height = &temp_height;

   video_context_driver_check_window(&size_data);

   if (temp_width != 0 && temp_height != 0)
      video_driver_set_size(&temp_width, &temp_height);

   return 1;
}
