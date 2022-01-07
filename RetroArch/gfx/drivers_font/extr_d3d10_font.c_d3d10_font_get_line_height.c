
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int font_data; TYPE_1__* font_driver; } ;
typedef TYPE_2__ d3d10_font_t ;
struct TYPE_3__ {int (* get_line_height ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static int d3d10_font_get_line_height(void *data)
{
   d3d10_font_t* font = (d3d10_font_t*)data;

   if (!font || !font->font_driver || !font->font_data)
      return -1;

   return font->font_driver->get_line_height(font->font_data);
}
