
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct texture_image {int pixels; int height; int width; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
struct TYPE_7__ {int context; int device; int ** samplers; } ;
typedef TYPE_2__ d3d11_video_t ;
struct TYPE_6__ {int Format; int Height; int Width; void* MiscFlags; } ;
struct TYPE_8__ {TYPE_1__ desc; int sampler; } ;
typedef TYPE_3__ d3d11_texture_t ;


 void* D3D11_RESOURCE_MISC_GENERATE_MIPS ;
 int DXGI_FORMAT_B8G8R8A8_UNORM ;
 size_t RARCH_FILTER_LINEAR ;
 size_t RARCH_FILTER_NEAREST ;
 size_t RARCH_WRAP_EDGE ;




 scalar_t__ calloc (int,int) ;
 int d3d11_init_texture (int ,TYPE_3__*) ;
 int d3d11_update_texture (int ,int ,int ,int ,int ,int ,TYPE_3__*) ;

__attribute__((used)) static uintptr_t d3d11_gfx_load_texture(
      void* video_data, void* data, bool threaded, enum texture_filter_type filter_type)
{
   d3d11_texture_t* texture = ((void*)0);
   d3d11_video_t* d3d11 = (d3d11_video_t*)video_data;
   struct texture_image* image = (struct texture_image*)data;

   if (!d3d11)
      return 0;

   texture = (d3d11_texture_t*)calloc(1, sizeof(*texture));

   if (!texture)
      return 0;

   switch (filter_type)
   {
      case 130:
         texture->desc.MiscFlags = D3D11_RESOURCE_MISC_GENERATE_MIPS;

      case 131:
         texture->sampler = d3d11->samplers[RARCH_FILTER_LINEAR][RARCH_WRAP_EDGE];
         break;
      case 129:
         texture->desc.MiscFlags = D3D11_RESOURCE_MISC_GENERATE_MIPS;

      case 128:
         texture->sampler = d3d11->samplers[RARCH_FILTER_NEAREST][RARCH_WRAP_EDGE];
         break;
   }

   texture->desc.Width = image->width;
   texture->desc.Height = image->height;
   texture->desc.Format = DXGI_FORMAT_B8G8R8A8_UNORM;

   d3d11_init_texture(d3d11->device, texture);

   d3d11_update_texture(
         d3d11->context, image->width, image->height, 0, DXGI_FORMAT_B8G8R8A8_UNORM, image->pixels,
         texture);

   return (uintptr_t)texture;
}
