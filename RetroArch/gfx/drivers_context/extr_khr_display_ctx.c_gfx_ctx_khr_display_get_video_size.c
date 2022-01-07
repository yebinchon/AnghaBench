
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int width; unsigned int height; } ;
typedef TYPE_1__ khr_display_ctx_data_t ;



__attribute__((used)) static void gfx_ctx_khr_display_get_video_size(void *data,
      unsigned *width, unsigned *height)
{
   khr_display_ctx_data_t *khr = (khr_display_ctx_data_t*)data;

   *width = khr->width;
   *height = khr->height;
}
