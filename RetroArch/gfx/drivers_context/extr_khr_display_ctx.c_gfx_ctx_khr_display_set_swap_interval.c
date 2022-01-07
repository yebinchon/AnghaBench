
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int need_new_swapchain; scalar_t__ swapchain; } ;
struct TYPE_4__ {int swap_interval; TYPE_1__ vk; } ;
typedef TYPE_2__ khr_display_ctx_data_t ;



__attribute__((used)) static void gfx_ctx_khr_display_set_swap_interval(void *data,
      int swap_interval)
{
   khr_display_ctx_data_t *khr = (khr_display_ctx_data_t*)data;

   if (khr->swap_interval != swap_interval)
   {
      khr->swap_interval = swap_interval;
      if (khr->vk.swapchain)
         khr->vk.need_new_swapchain = 1;
   }
}
