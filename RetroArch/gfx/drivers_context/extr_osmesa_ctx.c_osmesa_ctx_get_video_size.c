
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ gfx_ctx_osmesa_data_t ;



__attribute__((used)) static void osmesa_ctx_get_video_size(void *data,
      unsigned *width, unsigned *height)
{
   gfx_ctx_osmesa_data_t *osmesa = (gfx_ctx_osmesa_data_t*)data;

   if (!osmesa)
      return;

   *width = osmesa->width;
   *height = osmesa->height;
}
