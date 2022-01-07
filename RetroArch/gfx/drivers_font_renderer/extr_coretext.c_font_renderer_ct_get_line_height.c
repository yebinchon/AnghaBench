
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int metrics_height; } ;
typedef TYPE_1__ ct_font_renderer_t ;



__attribute__((used)) static int font_renderer_ct_get_line_height(void *data)
{
   ct_font_renderer_t *handle = (ct_font_renderer_t*)data;
   if (!handle)
      return 0;
   return handle->metrics_height;
}
