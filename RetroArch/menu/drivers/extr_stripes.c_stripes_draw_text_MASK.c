#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  xmb_shadows_enable; } ;
typedef  TYPE_2__ video_frame_info_t ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_10__ {float alpha; int /*<<< orphan*/  shadow_offset; } ;
typedef  TYPE_3__ stripes_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  menu_font_color_blue; int /*<<< orphan*/  menu_font_color_green; int /*<<< orphan*/  menu_font_color_red; } ;
struct TYPE_11__ {TYPE_1__ uints; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  font_data_t ;
typedef  enum text_alignment { ____Placeholder_text_alignment } text_alignment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,float,float,unsigned int,unsigned int,int /*<<< orphan*/ ,int,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(
      video_frame_info_t *video_info,
      stripes_handle_t *stripes,
      const char *str, float x,
      float y, float scale_factor, float alpha,
      enum text_alignment text_align,
      unsigned width, unsigned height, font_data_t* font)
{
   uint32_t color;
   uint8_t a8;
   settings_t *settings;

   if (alpha > stripes->alpha)
      alpha = stripes->alpha;

   a8       = 255 * alpha;

   /* Avoid drawing 100% transparent text */
   if (a8 == 0)
      return;

   settings = FUNC1();
   color = FUNC0(
         settings->uints.menu_font_color_red,
         settings->uints.menu_font_color_green,
         settings->uints.menu_font_color_blue, a8);

   FUNC2(font, str, x, y,
         width, height, color, text_align, scale_factor,
         video_info->xmb_shadows_enable,
         stripes->shadow_offset, false);
}