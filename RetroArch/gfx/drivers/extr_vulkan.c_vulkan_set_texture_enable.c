
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enable; int full_screen; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ vk_t ;



__attribute__((used)) static void vulkan_set_texture_enable(void *data, bool state, bool full_screen)
{
   vk_t *vk = (vk_t*)data;
   if (!vk)
      return;

   vk->menu.enable = state;
   vk->menu.full_screen = full_screen;
}
