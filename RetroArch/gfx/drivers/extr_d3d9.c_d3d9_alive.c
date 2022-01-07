
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int quitting; int should_resize; } ;
typedef TYPE_1__ d3d9_video_t ;


 int d3d9_restore (TYPE_1__*) ;
 int d3d9_set_resize (TYPE_1__*,unsigned int,unsigned int) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;
 int win32_check_window (int*,int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static bool d3d9_alive(void *data)
{
   unsigned temp_width = 0;
   unsigned temp_height = 0;
   bool ret = 0;
   bool quit = 0;
   bool resize = 0;
   d3d9_video_t *d3d = (d3d9_video_t*)data;


   video_driver_get_size(&temp_width, &temp_height);


   win32_check_window(&quit, &resize, &temp_width, &temp_height);


   if (quit)
      d3d->quitting = quit;

   if (resize)
   {
      d3d->should_resize = 1;
      d3d9_set_resize(d3d, temp_width, temp_height);
      d3d9_restore(d3d);
   }

   ret = !quit;

   if ( temp_width != 0 &&
         temp_height != 0)
      video_driver_set_size(&temp_width, &temp_height);

   return ret;
}
