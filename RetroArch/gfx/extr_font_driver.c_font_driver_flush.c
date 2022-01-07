
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_4__ {int renderer_data; TYPE_1__* renderer; } ;
typedef TYPE_2__ font_data_t ;
struct TYPE_3__ {int (* flush ) (unsigned int,unsigned int,int ,int *) ;} ;


 int stub1 (unsigned int,unsigned int,int ,int *) ;
 void* video_font_driver ;

void font_driver_flush(unsigned width, unsigned height, void *font_data,
      video_frame_info_t *video_info)
{
   font_data_t *font = (font_data_t*)(font_data ? font_data : video_font_driver);
   if (font && font->renderer && font->renderer->flush)
      font->renderer->flush(width, height, font->renderer_data, video_info);
}
