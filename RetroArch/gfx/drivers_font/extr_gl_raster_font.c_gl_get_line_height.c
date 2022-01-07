
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int font_data; TYPE_1__* font_driver; } ;
typedef TYPE_2__ gl_raster_t ;
struct TYPE_3__ {int (* get_line_height ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static int gl_get_line_height(void *data)
{
   gl_raster_t *font = (gl_raster_t*)data;

   if (!font || !font->font_driver || !font->font_data)
      return -1;

   return font->font_driver->get_line_height(font->font_data);
}
