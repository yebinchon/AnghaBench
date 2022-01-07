
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct texture_image {int pixels; int height; int width; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
struct TYPE_8__ {int srv_heap; } ;
struct TYPE_9__ {int device; TYPE_2__ desc; int ** samplers; } ;
typedef TYPE_3__ d3d12_video_t ;
struct TYPE_7__ {int Format; int Height; int Width; void* MipLevels; } ;
struct TYPE_10__ {int * srv_heap; TYPE_1__ desc; int sampler; } ;
typedef TYPE_4__ d3d12_texture_t ;


 int DXGI_FORMAT_B8G8R8A8_UNORM ;
 size_t RARCH_FILTER_LINEAR ;
 size_t RARCH_FILTER_NEAREST ;
 size_t RARCH_WRAP_EDGE ;




 void* UINT16_MAX ;
 scalar_t__ calloc (int,int) ;
 int d3d12_init_texture (int ,TYPE_4__*) ;
 int d3d12_update_texture (int ,int ,int ,int ,int ,TYPE_4__*) ;

__attribute__((used)) static uintptr_t d3d12_gfx_load_texture(
      void* video_data, void* data, bool threaded,
      enum texture_filter_type filter_type)
{
   d3d12_texture_t* texture = ((void*)0);
   d3d12_video_t* d3d12 = (d3d12_video_t*)video_data;
   struct texture_image* image = (struct texture_image*)data;

   if (!d3d12)
      return 0;

   texture = (d3d12_texture_t*)calloc(1, sizeof(*texture));

   if (!texture)
      return 0;

   switch (filter_type)
   {
      case 130:
         texture->desc.MipLevels = UINT16_MAX;
      case 131:
         texture->sampler = d3d12->samplers[
            RARCH_FILTER_LINEAR][RARCH_WRAP_EDGE];
         break;
      case 129:
         texture->desc.MipLevels = UINT16_MAX;
      case 128:
         texture->sampler = d3d12->samplers[
            RARCH_FILTER_NEAREST][RARCH_WRAP_EDGE];
         break;
   }

   texture->desc.Width = image->width;
   texture->desc.Height = image->height;
   texture->desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;
   texture->srv_heap = &d3d12->desc.srv_heap;

   d3d12_init_texture(d3d12->device, texture);

   d3d12_update_texture(
         image->width, image->height, 0,
         DXGI_FORMAT_B8G8R8A8_UNORM, image->pixels, texture);

   return (uintptr_t)texture;
}
