
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ width; scalar_t__ height; scalar_t__ rgb32; int * texture; int tex_filter; int format; } ;
typedef TYPE_1__ vita_video_t ;
struct retro_framebuffer {scalar_t__ width; scalar_t__ height; scalar_t__ memory_flags; int format; int pitch; int data; } ;


 int RETRO_PIXEL_FORMAT_RGB565 ;
 int RETRO_PIXEL_FORMAT_XRGB8888 ;
 int * vita2d_create_empty_texture_format (scalar_t__,scalar_t__,int ) ;
 int vita2d_free_texture (int *) ;
 int vita2d_texture_get_datap (int *) ;
 int vita2d_texture_get_stride (int *) ;
 int vita2d_texture_set_filters (int *,int ,int ) ;
 int vita2d_wait_rendering_done () ;

__attribute__((used)) static bool vita_get_current_sw_framebuffer(void *data,
      struct retro_framebuffer *framebuffer)
{
   vita_video_t *vita = (vita_video_t*)data;

   if (!vita->texture || vita->width != framebuffer->width ||
         vita->height != framebuffer->height)
   {
      if(vita->texture)
      {
         vita2d_wait_rendering_done();
         vita2d_free_texture(vita->texture);
         vita->texture = ((void*)0);
      }

      vita->width = framebuffer->width;
      vita->height = framebuffer->height;
      vita->texture = vita2d_create_empty_texture_format(
            vita->width, vita->height, vita->format);
      vita2d_texture_set_filters(vita->texture,
            vita->tex_filter,vita->tex_filter);
   }

   framebuffer->data = vita2d_texture_get_datap(vita->texture);
   framebuffer->pitch = vita2d_texture_get_stride(vita->texture);
   framebuffer->format = vita->rgb32
      ? RETRO_PIXEL_FORMAT_XRGB8888 : RETRO_PIXEL_FORMAT_RGB565;
   framebuffer->memory_flags = 0;

   return 1;
}
