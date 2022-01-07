
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int renderer_data; TYPE_1__* renderer; } ;
typedef TYPE_2__ font_data_t ;
struct TYPE_3__ {int (* bind_block ) (int ,void*) ;} ;


 int stub1 (int ,void*) ;
 void* video_font_driver ;

void font_driver_bind_block(void *font_data, void *block)
{
   font_data_t *font = (font_data_t*)(font_data ? font_data : video_font_driver);

   if (font && font->renderer && font->renderer->bind_block)
      font->renderer->bind_block(font->renderer_data, block);
}
