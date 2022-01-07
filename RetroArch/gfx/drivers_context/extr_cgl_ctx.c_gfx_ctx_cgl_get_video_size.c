
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ gfx_ctx_cgl_data_t ;



__attribute__((used)) static void gfx_ctx_cgl_get_video_size(void *data, unsigned *width, unsigned *height)
{
   gfx_ctx_cgl_data_t *cgl = (gfx_ctx_cgl_data_t*)data;
   *width = cgl->width;
   *height = cgl->height;
}
