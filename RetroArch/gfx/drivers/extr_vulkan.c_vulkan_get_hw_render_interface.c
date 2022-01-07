
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enable; int iface; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
typedef TYPE_2__ vk_t ;
struct retro_hw_render_interface {int dummy; } ;



__attribute__((used)) static bool vulkan_get_hw_render_interface(void *data,
      const struct retro_hw_render_interface **iface)
{
   vk_t *vk = (vk_t*)data;
   *iface = (const struct retro_hw_render_interface*)&vk->hw.iface;
   return vk->hw.enable;
}
