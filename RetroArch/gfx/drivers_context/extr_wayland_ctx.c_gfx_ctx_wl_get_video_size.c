
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int buffer_scale; unsigned int height; } ;
typedef TYPE_1__ gfx_ctx_wayland_data_t ;



__attribute__((used)) static void gfx_ctx_wl_get_video_size(void *data,
      unsigned *width, unsigned *height)
{
   gfx_ctx_wayland_data_t *wl = (gfx_ctx_wayland_data_t*)data;

   *width = wl->width * wl->buffer_scale;
   *height = wl->height * wl->buffer_scale;
}
