
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vk_t ;
typedef int const uint32_t ;
struct vk_texture {int default_smooth; int mipmap; } ;
struct texture_image {int width; int height; int const* pixels; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;




 int TEXTURE_FILTER_LINEAR ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int VK_FORMAT_B8G8R8A8_UNORM ;
 int VULKAN_TEXTURE_STATIC ;
 scalar_t__ calloc (int,int) ;
 struct vk_texture vulkan_create_texture (int *,int *,int,int,int ,int const*,int *,int ) ;

__attribute__((used)) static uintptr_t vulkan_load_texture(void *video_data, void *data,
      bool threaded, enum texture_filter_type filter_type)
{
   struct vk_texture *texture = ((void*)0);
   vk_t *vk = (vk_t*)video_data;
   struct texture_image *image = (struct texture_image*)data;
   if (!image)
      return 0;

   texture = (struct vk_texture*)
      calloc(1, sizeof(*texture));

   if (!texture)
      return 0;

   if (!image->pixels || !image->width || !image->height)
   {



      static const uint32_t checkerboard[] = {
         0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu,
         0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u,
         0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu,
         0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u,
         0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu,
         0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u,
         0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu,
         0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u, 0xffffffffu, 0xff000000u,
      };


      *texture = vulkan_create_texture(vk, ((void*)0),
            8, 8, VK_FORMAT_B8G8R8A8_UNORM,
            checkerboard, ((void*)0), VULKAN_TEXTURE_STATIC);
      texture->default_smooth = 0;
      texture->mipmap = 0;
   }
   else
   {
      *texture = vulkan_create_texture(vk, ((void*)0),
            image->width, image->height, VK_FORMAT_B8G8R8A8_UNORM,
            image->pixels, ((void*)0), VULKAN_TEXTURE_STATIC);

      texture->default_smooth =
         filter_type == TEXTURE_FILTER_MIPMAP_LINEAR || filter_type == TEXTURE_FILTER_LINEAR;
      texture->mipmap = filter_type == TEXTURE_FILTER_MIPMAP_LINEAR;
   }

   return (uintptr_t)texture;
}
