
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int ctx_data; TYPE_2__* ctx_driver; } ;
typedef TYPE_4__ vk_t ;
struct TYPE_8__ {int video_swap_interval; } ;
struct TYPE_10__ {scalar_t__ video_adaptive_vsync; } ;
struct TYPE_12__ {TYPE_1__ uints; TYPE_3__ bools; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_9__ {int (* swap_interval ) (int ,int) ;} ;


 int GFX_CTX_FLAGS_ADAPTIVE_VSYNC ;
 int RARCH_LOG (char*,char*) ;
 TYPE_5__* config_get_ptr () ;
 int stub1 (int ,int) ;
 scalar_t__ video_driver_test_all_flags (int ) ;
 int vulkan_check_swapchain (TYPE_4__*) ;

__attribute__((used)) static void vulkan_set_nonblock_state(void *data, bool state)
{
   int interval = 0;
   vk_t *vk = (vk_t*)data;
   settings_t *settings = config_get_ptr();
   bool adaptive_vsync_enabled = video_driver_test_all_flags(
         GFX_CTX_FLAGS_ADAPTIVE_VSYNC) && settings->bools.video_adaptive_vsync;

   if (!vk)
      return;

   RARCH_LOG("[Vulkan]: VSync => %s\n", state ? "off" : "on");

   if (!state)
      interval = settings->uints.video_swap_interval;

   if (vk->ctx_driver->swap_interval)
   {
      if (adaptive_vsync_enabled && interval == 1)
         interval = -1;
      vk->ctx_driver->swap_interval(vk->ctx_data, interval);
   }



   vulkan_check_swapchain(vk);
}
