
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int should_resize; int ctx_data; TYPE_1__* ctx_driver; } ;
typedef TYPE_2__ gl1_t ;
struct TYPE_3__ {int (* check_window ) (int ,int*,int*,unsigned int*,unsigned int*,int) ;} ;


 int RARCH_CTL_IS_SHUTDOWN ;
 int rarch_ctl (int ,int *) ;
 int stub1 (int ,int*,int*,unsigned int*,unsigned int*,int) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static bool gl1_gfx_alive(void *data)
{
   unsigned temp_width = 0;
   unsigned temp_height = 0;
   bool quit = 0;
   bool resize = 0;
   bool ret = 0;
   bool is_shutdown = rarch_ctl(RARCH_CTL_IS_SHUTDOWN, ((void*)0));
   gl1_t *gl1 = (gl1_t*)data;


   video_driver_get_size(&temp_width, &temp_height);

   gl1->ctx_driver->check_window(gl1->ctx_data,
            &quit, &resize, &temp_width, &temp_height, is_shutdown);

   if (resize)
      gl1->should_resize = 1;

   ret = !quit;

   if (temp_width != 0 && temp_height != 0)
      video_driver_set_size(&temp_width, &temp_height);

   return ret;
}
