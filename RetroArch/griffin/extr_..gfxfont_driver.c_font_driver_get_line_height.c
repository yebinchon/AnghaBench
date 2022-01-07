
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int renderer_data; TYPE_1__* renderer; } ;
typedef TYPE_2__ font_data_t ;
struct TYPE_3__ {int (* get_line_height ) (int ) ;} ;


 int font_driver_get_message_width (void*,char*,int,float) ;
 int roundf (float) ;
 int stub1 (int ) ;
 void* video_font_driver ;

int font_driver_get_line_height(void *font_data, float scale)
{
   int line_height;
   font_data_t *font = (font_data_t*)(font_data ? font_data : video_font_driver);


   if (font && font->renderer && font->renderer->get_line_height)
      if ((line_height = font->renderer->get_line_height(font->renderer_data)) != -1)
         return (int)(line_height * roundf(scale));


   return font_driver_get_message_width(font_data, "a", 1, scale);
}
