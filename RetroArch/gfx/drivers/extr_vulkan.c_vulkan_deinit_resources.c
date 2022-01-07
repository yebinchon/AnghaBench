
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vk_t ;


 int vulkan_deinit_buffers (int *) ;
 int vulkan_deinit_command_buffers (int *) ;
 int vulkan_deinit_descriptor_pool (int *) ;
 int vulkan_deinit_framebuffers (int *) ;
 int vulkan_deinit_pipelines (int *) ;
 int vulkan_deinit_textures (int *) ;

__attribute__((used)) static void vulkan_deinit_resources(vk_t *vk)
{
   vulkan_deinit_pipelines(vk);
   vulkan_deinit_framebuffers(vk);
   vulkan_deinit_descriptor_pool(vk);
   vulkan_deinit_textures(vk);
   vulkan_deinit_buffers(vk);
   vulkan_deinit_command_buffers(vk);
}
