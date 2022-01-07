
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line_height; } ;
typedef TYPE_1__ stb_font_renderer_t ;



__attribute__((used)) static int font_renderer_stb_get_line_height(void* data)
{
   stb_font_renderer_t *handle = (stb_font_renderer_t*)data;
   return handle->line_height;
}
