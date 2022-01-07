
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vulkan_filter_chain_t ;
struct TYPE_2__ {scalar_t__ filter_chain; } ;
typedef TYPE_1__ vk_t ;
struct video_shader {int dummy; } ;


 struct video_shader* vulkan_filter_chain_get_preset (int *) ;

__attribute__((used)) static struct video_shader *vulkan_get_current_shader(void *data)
{
   vk_t *vk = (vk_t*)data;
   if (!vk || !vk->filter_chain)
      return ((void*)0);

   return vulkan_filter_chain_get_preset((vulkan_filter_chain_t*)vk->filter_chain);
}
