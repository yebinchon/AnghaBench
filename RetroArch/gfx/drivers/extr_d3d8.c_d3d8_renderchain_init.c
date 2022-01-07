
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_info_t ;
struct video_viewport {unsigned int width; unsigned int height; } ;
struct LinkInfo {int tex_h; int tex_w; } ;
struct TYPE_5__ {scalar_t__ renderchain_data; int dev; } ;
typedef TYPE_1__ d3d8_video_t ;
struct TYPE_6__ {int pixel_size; int tex_h; int tex_w; void* dev; } ;
typedef TYPE_2__ d3d8_renderchain_t ;
typedef int LPDIRECT3DDEVICE8 ;


 unsigned int RETRO_PIXEL_FORMAT_RGB565 ;
 unsigned int RETRO_PIXEL_FORMAT_XRGB8888 ;
 int d3d8_renderchain_create_first_pass (TYPE_1__*,TYPE_2__*,int const*) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 struct video_viewport* video_viewport_get_custom () ;

__attribute__((used)) static bool d3d8_renderchain_init(void *data,
      const void *_video_info,
      void *dev_data,
      const void *info_data,
      bool rgb32
      )
{
   unsigned width, height;
   d3d8_video_t *d3d = (d3d8_video_t*)data;
   LPDIRECT3DDEVICE8 d3dr = (LPDIRECT3DDEVICE8)d3d->dev;
   const video_info_t *video_info = (const video_info_t*)_video_info;
   const struct LinkInfo *link_info = (const struct LinkInfo*)info_data;
   d3d8_renderchain_t *chain = (d3d8_renderchain_t*)d3d->renderchain_data;
   unsigned fmt = (rgb32) ? RETRO_PIXEL_FORMAT_XRGB8888 : RETRO_PIXEL_FORMAT_RGB565;
   struct video_viewport *custom_vp = video_viewport_get_custom();

   video_driver_get_size(&width, &height);

   chain->dev = dev_data;
   chain->pixel_size = (fmt == RETRO_PIXEL_FORMAT_RGB565) ? 2 : 4;
   chain->tex_w = link_info->tex_w;
   chain->tex_h = link_info->tex_h;

   if (!d3d8_renderchain_create_first_pass(d3d, chain, video_info))
      return 0;


   if (custom_vp->width == 0)
      custom_vp->width = width;

   if (custom_vp->height == 0)
      custom_vp->height = height;

   return 1;
}
