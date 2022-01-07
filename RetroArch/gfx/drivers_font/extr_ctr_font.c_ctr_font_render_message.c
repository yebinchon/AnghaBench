
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_6__ {int font_data; TYPE_1__* font_driver; } ;
typedef TYPE_2__ ctr_font_t ;
struct TYPE_5__ {float (* get_line_height ) (int ) ;} ;


 int ctr_font_render_line (int *,TYPE_2__*,char const*,unsigned int,float,unsigned int const,float,float,unsigned int) ;
 char* strchr (char const*,char) ;
 unsigned int strlen (char const*) ;
 float stub1 (int ) ;

__attribute__((used)) static void ctr_font_render_message(
      video_frame_info_t *video_info,
      ctr_font_t* font, const char* msg, float scale,
      const unsigned int color, float pos_x, float pos_y,
      unsigned text_align)
{
   int lines = 0;
   float line_height;

   if (!msg || !*msg)
      return;


   if (!font->font_driver->get_line_height)
   {
      ctr_font_render_line(video_info, font, msg, strlen(msg),
                           scale, color, pos_x, pos_y, text_align);
      return;
   }

   line_height = scale / font->font_driver->get_line_height(font->font_data);

   for (;;)
   {
      const char* delim = strchr(msg, '\n');


      if (delim)
      {
         unsigned msg_len = delim - msg;
         ctr_font_render_line(video_info, font, msg, msg_len,
                              scale, color, pos_x, pos_y - (float)lines * line_height,
                              text_align);
         msg += msg_len + 1;
         lines++;
      }
      else
      {
         unsigned msg_len = strlen(msg);
         ctr_font_render_line(video_info, font, msg, msg_len,
                              scale, color, pos_x, pos_y - (float)lines * line_height,
                              text_align);
         break;
      }
   }
}
