
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned int video_width; unsigned int video_height; int quitting; int should_resize; int ctx_data; TYPE_1__* ctx_driver; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_3__ {int (* check_window ) (int ,int*,int*,unsigned int*,unsigned int*,int) ;} ;


 int RARCH_CTL_IS_SHUTDOWN ;
 int rarch_ctl (int ,int *) ;
 int stub1 (int ,int*,int*,unsigned int*,unsigned int*,int) ;
 int video_driver_set_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static bool vulkan_alive(void *data)
{
   bool ret = 0;
   bool quit = 0;
   bool resize = 0;
   vk_t *vk = (vk_t*)data;
   bool is_shutdown = rarch_ctl(RARCH_CTL_IS_SHUTDOWN, ((void*)0));
   unsigned temp_width = vk->video_width;
   unsigned temp_height = vk->video_height;

   vk->ctx_driver->check_window(vk->ctx_data,
            &quit, &resize, &temp_width, &temp_height, is_shutdown);

   if (quit)
      vk->quitting = 1;
   else if (resize)
      vk->should_resize = 1;

   ret = !vk->quitting;

   if (temp_width != 0 && temp_height != 0)
   {
      video_driver_set_size(&temp_width, &temp_height);
      vk->video_width = temp_width;
      vk->video_height = temp_height;
   }

   return ret;
}
