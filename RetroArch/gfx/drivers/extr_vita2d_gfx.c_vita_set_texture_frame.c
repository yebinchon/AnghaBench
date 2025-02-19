
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int width; unsigned int height; int * texture; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ vita_video_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int RARCH_LOG (char*,unsigned int,unsigned int) ;
 int SCE_GXM_TEXTURE_FILTER_LINEAR ;
 int SCE_GXM_TEXTURE_FORMAT_U4U4U4U4_RGBA ;
 int * vita2d_create_empty_texture (unsigned int,unsigned int) ;
 int * vita2d_create_empty_texture_format (unsigned int,unsigned int,int ) ;
 int vita2d_free_texture (int *) ;
 void* vita2d_texture_get_datap (int *) ;
 unsigned int vita2d_texture_get_stride (int *) ;
 int vita2d_texture_set_filters (int *,int ,int ) ;

__attribute__((used)) static void vita_set_texture_frame(void *data, const void *frame, bool rgb32,
      unsigned width, unsigned height, float alpha)
{
   int i, j;
   void *tex_p;
   unsigned int stride;
   vita_video_t *vita = (vita_video_t*)data;

   (void)alpha;

   if (width != vita->menu.width && height != vita->menu.height && vita->menu.texture)
   {
      vita2d_free_texture(vita->menu.texture);
      vita->menu.texture = ((void*)0);
   }

   if (!vita->menu.texture)
   {
      if (rgb32)
      {
         vita->menu.texture = vita2d_create_empty_texture(width, height);
         RARCH_LOG("Creating Frame RGBA8 texture: w: %i  h: %i\n",
               width, height);
      }
      else
      {
         vita->menu.texture = vita2d_create_empty_texture_format(
               width, height, SCE_GXM_TEXTURE_FORMAT_U4U4U4U4_RGBA);
         RARCH_LOG("Creating Frame R5G6B5 texture: w: %i  h: %i\n",
               width, height);
      }
      vita->menu.width = width;
      vita->menu.height = height;
   }

   vita2d_texture_set_filters(vita->menu.texture,
         SCE_GXM_TEXTURE_FILTER_LINEAR,
         SCE_GXM_TEXTURE_FILTER_LINEAR);

   tex_p = vita2d_texture_get_datap(vita->menu.texture);
   stride = vita2d_texture_get_stride(vita->menu.texture);

   if (rgb32)
   {
      uint32_t *tex32 = tex_p;
      const uint32_t *frame32 = frame;

      stride /= 4;

      for (i = 0; i < height; i++)
         for (j = 0; j < width; j++)
            tex32[j + i*stride] = frame32[j + i*width];
   }
   else
   {
      uint16_t *tex16 = tex_p;
      const uint16_t *frame16 = frame;

      stride /= 2;

      for (i = 0; i < height; i++)
         for (j = 0; j < width; j++)
            tex16[j + i*stride] = frame16[j + i*width];
   }
}
