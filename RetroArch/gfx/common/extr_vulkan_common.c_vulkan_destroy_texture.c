
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vk_texture {scalar_t__ image; scalar_t__ memory; scalar_t__ buffer; scalar_t__ view; scalar_t__ mapped; } ;
typedef int VkDevice ;


 int memset (struct vk_texture*,int ,int) ;
 int vkDestroyBuffer (int ,scalar_t__,int *) ;
 int vkDestroyImage (int ,scalar_t__,int *) ;
 int vkDestroyImageView (int ,scalar_t__,int *) ;
 int vkFreeMemory (int ,scalar_t__,int *) ;
 int vkUnmapMemory (int ,scalar_t__) ;
 int vulkan_track_dealloc (scalar_t__) ;

void vulkan_destroy_texture(
      VkDevice device,
      struct vk_texture *tex)
{
   if (tex->mapped)
      vkUnmapMemory(device, tex->memory);
   if (tex->view)
      vkDestroyImageView(device, tex->view, ((void*)0));
   if (tex->image)
      vkDestroyImage(device, tex->image, ((void*)0));
   if (tex->buffer)
      vkDestroyBuffer(device, tex->buffer, ((void*)0));
   if (tex->memory)
      vkFreeMemory(device, tex->memory, ((void*)0));





   memset(tex, 0, sizeof(*tex));
}
