
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ opendingux_ctx_data_t ;



__attribute__((used)) static void gfx_ctx_opendingux_get_video_size(void *data,
      unsigned *width, unsigned *height)
{
   opendingux_ctx_data_t *viv = (opendingux_ctx_data_t*)data;

   *width = viv->width;
   *height = viv->height;
}
