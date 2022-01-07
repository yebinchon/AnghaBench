
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scale_factor; } ;
typedef TYPE_1__ bm_renderer_t ;


 int FONT_HEIGHT ;

__attribute__((used)) static int font_renderer_bmp_get_line_height(void* data)
{
    bm_renderer_t *handle = (bm_renderer_t*)data;

    if (!handle)
      return FONT_HEIGHT;

    return FONT_HEIGHT * handle->scale_factor;
}
