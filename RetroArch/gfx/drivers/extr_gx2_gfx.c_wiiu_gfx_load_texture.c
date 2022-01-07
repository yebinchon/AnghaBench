
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wiiu_video_t ;
typedef int uint32_t ;
struct texture_image {int width; int height; scalar_t__ pixels; } ;
typedef enum texture_filter_type { ____Placeholder_texture_filter_type } texture_filter_type ;
struct TYPE_6__ {int width; int height; int depth; int pitch; int imageSize; scalar_t__ image; int alignment; int format; int tileMode; int dim; } ;
struct TYPE_5__ {int viewNumSlices; TYPE_4__ surface; int compMap; } ;
typedef TYPE_1__ GX2Texture ;


 int GX2CalcSurfaceSizeAndAlignment (TYPE_4__*) ;
 int GX2InitTextureRegs (TYPE_1__*) ;
 int GX2Invalidate (int ,scalar_t__,int ) ;
 int GX2_COMP_SEL (int ,int ,int ,int ) ;
 int GX2_INVALIDATE_MODE_CPU_TEXTURE ;
 int GX2_SURFACE_DIM_TEXTURE_2D ;
 int GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8 ;
 int GX2_TILE_MODE_LINEAR_ALIGNED ;
 scalar_t__ MEM2_alloc (int ,int ) ;
 int _A ;
 int _B ;
 int _G ;
 int _R ;
 TYPE_1__* calloc (int,int) ;
 int memcpy (int*,scalar_t__,int) ;

__attribute__((used)) static uintptr_t wiiu_gfx_load_texture(void *video_data, void *data,
                                       bool threaded, enum texture_filter_type filter_type)
{
   uint32_t i;
   wiiu_video_t *wiiu = (wiiu_video_t *) video_data;
   struct texture_image *image = (struct texture_image *)data;

   if (!wiiu)
      return 0;

   GX2Texture *texture = calloc(1, sizeof(GX2Texture));

   texture->surface.width = image->width;
   texture->surface.height = image->height;
   texture->surface.depth = 1;
   texture->surface.dim = GX2_SURFACE_DIM_TEXTURE_2D;
   texture->surface.tileMode = GX2_TILE_MODE_LINEAR_ALIGNED;
   texture->viewNumSlices = 1;

   texture->surface.format = GX2_SURFACE_FORMAT_UNORM_R8_G8_B8_A8;
   texture->compMap = GX2_COMP_SEL(_G, _B, _A, _R);

   GX2CalcSurfaceSizeAndAlignment(&texture->surface);
   GX2InitTextureRegs(texture);
   texture->surface.image = MEM2_alloc(texture->surface.imageSize, texture->surface.alignment);

   for (i = 0; (i < image->height) && (i < texture->surface.height); i++)
      memcpy((uint32_t *)texture->surface.image + (i * texture->surface.pitch),
             image->pixels + (i * image->width), image->width * sizeof(image->pixels));

   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_TEXTURE, texture->surface.image, texture->surface.imageSize);

   return (uintptr_t)texture;
}
