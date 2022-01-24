#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  font_v; int /*<<< orphan*/  font_u; int /*<<< orphan*/  font_y; int /*<<< orphan*/  font; int /*<<< orphan*/  font_driver; } ;
typedef  TYPE_4__ xv_t ;
struct TYPE_10__ {int video_msg_color_r; int video_msg_color_g; int video_msg_color_b; int /*<<< orphan*/  video_font_size; } ;
struct TYPE_9__ {scalar_t__* path_font; } ;
struct TYPE_8__ {int /*<<< orphan*/  video_font_enable; } ;
struct TYPE_12__ {TYPE_3__ floats; TYPE_2__ paths; TYPE_1__ bools; } ;
typedef  TYPE_5__ settings_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_5__* FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int) ; 

__attribute__((used)) static void FUNC4(xv_t *xv, const char *font_path, unsigned font_size)
{
   settings_t *settings = FUNC1();

   if (!settings->bools.video_font_enable)
      return;

   if (FUNC2(
            &xv->font_driver,
            &xv->font, *settings->paths.path_font
            ? settings->paths.path_font : NULL,
            settings->floats.video_font_size))
   {
      int r, g, b;
      r = settings->floats.video_msg_color_r * 255;
      r = (r < 0 ? 0 : (r > 255 ? 255 : r));
      g = settings->floats.video_msg_color_g * 255;
      g = (g < 0 ? 0 : (g > 255 ? 255 : g));
      b = settings->floats.video_msg_color_b * 255;
      b = (b < 0 ? 0 : (b > 255 ? 255 : b));

      FUNC3(&xv->font_y, &xv->font_u, &xv->font_v,
            r, g, b);
   }
   else
      FUNC0("[XVideo]: Could not initialize fonts.\n");
}