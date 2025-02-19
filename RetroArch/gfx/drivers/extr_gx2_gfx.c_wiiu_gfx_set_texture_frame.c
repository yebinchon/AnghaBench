
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {unsigned int width; unsigned int height; int imageSize; TYPE_8__* image; int pitch; } ;
struct TYPE_13__ {TYPE_4__ surface; } ;
struct TYPE_14__ {unsigned int width; unsigned int height; TYPE_8__* v; TYPE_5__ texture; } ;
struct TYPE_10__ {int height; int width; int y; int x; } ;
struct TYPE_15__ {TYPE_6__ menu; TYPE_2__ vp; } ;
typedef TYPE_7__ wiiu_video_t ;
typedef unsigned int uint32_t ;
typedef int uint16_t ;
struct TYPE_11__ {float u; float v; float width; float height; } ;
struct TYPE_9__ {int height; int width; int y; int x; } ;
struct TYPE_16__ {TYPE_3__ coord; TYPE_1__ pos; } ;


 int GX2Invalidate (int ,TYPE_8__*,int) ;
 int GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER ;
 int GX2_INVALIDATE_MODE_CPU_TEXTURE ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static void wiiu_gfx_set_texture_frame(void *data, const void *frame, bool rgb32,
                                       unsigned width, unsigned height, float alpha)
{
   uint32_t i;
   const uint16_t *src = ((void*)0);
   uint16_t *dst = ((void*)0);
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (!wiiu)
      return;

   if (!frame || !width || !height)
      return;

   if (width > wiiu->menu.texture.surface.width)
      width = wiiu->menu.texture.surface.width;

   if (height > wiiu->menu.texture.surface.height)
      height = wiiu->menu.texture.surface.height;

   wiiu->menu.width = width;
   wiiu->menu.height = height;

   src = frame;
   dst = (uint16_t *)wiiu->menu.texture.surface.image;

   for (i = 0; i < height; i++)
   {
      memcpy(dst, src, width * sizeof(uint16_t));
      dst += wiiu->menu.texture.surface.pitch;
      src += width;
   }

   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_TEXTURE, wiiu->menu.texture.surface.image,
                 wiiu->menu.texture.surface.imageSize);

   wiiu->menu.v->pos.x = wiiu->vp.x;
   wiiu->menu.v->pos.y = wiiu->vp.y;
   wiiu->menu.v->pos.width = wiiu->vp.width;
   wiiu->menu.v->pos.height = wiiu->vp.height;
   wiiu->menu.v->coord.u = 0.0f;
   wiiu->menu.v->coord.v = 0.0f;
   wiiu->menu.v->coord.width = (float)width / wiiu->menu.texture.surface.width;
   wiiu->menu.v->coord.height = (float)height / wiiu->menu.texture.surface.height;
   GX2Invalidate(GX2_INVALIDATE_MODE_CPU_ATTRIBUTE_BUFFER, wiiu->menu.v, 4 * sizeof(*wiiu->menu.v));

}
