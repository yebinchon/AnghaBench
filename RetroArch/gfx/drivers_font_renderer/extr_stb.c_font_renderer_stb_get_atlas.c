
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct font_atlas {int dummy; } ;
struct TYPE_2__ {struct font_atlas atlas; } ;
typedef TYPE_1__ stb_font_renderer_t ;



__attribute__((used)) static struct font_atlas *font_renderer_stb_get_atlas(void *data)
{
   stb_font_renderer_t *self = (stb_font_renderer_t*)data;
   return &self->atlas;
}
