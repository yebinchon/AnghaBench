#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_6__ {int /*<<< orphan*/  font_data; TYPE_1__* font_driver; } ;
typedef  TYPE_2__ ctr_font_t ;
struct TYPE_5__ {float (* get_line_height ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,char const*,unsigned int,float,unsigned int const,float,float,unsigned int) ; 
 char* FUNC1 (char const*,char) ; 
 unsigned int FUNC2 (char const*) ; 
 float FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(
      video_frame_info_t *video_info,
      ctr_font_t* font, const char* msg, float scale,
      const unsigned int color, float pos_x, float pos_y,
      unsigned text_align)
{
   int lines = 0;
   float line_height;

   if (!msg || !*msg)
      return;

   /* If the font height is not supported just draw as usual */
   if (!font->font_driver->get_line_height)
   {
      FUNC0(video_info, font, msg, FUNC2(msg),
                           scale, color, pos_x, pos_y, text_align);
      return;
   }

   line_height = scale / font->font_driver->get_line_height(font->font_data);

   for (;;)
   {
      const char* delim = FUNC1(msg, '\n');

      /* Draw the line */
      if (delim)
      {
         unsigned msg_len = delim - msg;
         FUNC0(video_info, font, msg, msg_len,
                              scale, color, pos_x, pos_y - (float)lines * line_height,
                              text_align);
         msg += msg_len + 1;
         lines++;
      }
      else
      {
         unsigned msg_len = FUNC2(msg);
         FUNC0(video_info, font, msg, msg_len,
                              scale, color, pos_x, pos_y - (float)lines * line_height,
                              text_align);
         break;
      }
   }
}