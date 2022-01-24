#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* vita; int /*<<< orphan*/  font_data; TYPE_1__* font_driver; } ;
typedef  TYPE_4__ vita_font_t ;
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_8__ {float height; } ;
struct TYPE_9__ {TYPE_2__ vp; } ;
struct TYPE_7__ {float (* get_line_height ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 float FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,char const*,unsigned int,float,unsigned int const,float,float,unsigned int) ; 

__attribute__((used)) static void FUNC4(
      video_frame_info_t *video_info,
      vita_font_t *font, const char *msg, float scale,
      const unsigned int color, float pos_x, float pos_y,
      unsigned text_align)
{
   float line_height;
   int lines = 0;

   if (!msg || !*msg)
      return;

   /* If the font height is not supported just draw as usual */
   if (!font->font_driver->get_line_height)
   {
      FUNC3(video_info, font, msg, FUNC1(msg),
            scale, color, pos_x, pos_y, text_align);
      return;
   }

   line_height = font->font_driver->get_line_height(font->font_data) *
                     scale / font->vita->vp.height;

   for (;;)
   {
      const char *delim = FUNC0(msg, '\n');
      unsigned msg_len  = (delim) ? (delim - msg) : FUNC1(msg);

      FUNC3(video_info, font, msg, msg_len,
            scale, color, pos_x, pos_y - (float)lines * line_height,
            text_align);

      /* Draw the line */
      if (!delim)
         break;

      msg += msg_len + 1;
      lines++;
   }
}