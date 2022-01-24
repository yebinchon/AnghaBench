#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_14__ {size_t texture_index; scalar_t__ active; } ;
typedef  TYPE_6__ materialui_nav_bar_menu_tab_t ;
struct TYPE_13__ {int /*<<< orphan*/ * list; } ;
struct TYPE_12__ {float* nav_bar_background; float* divider; float* nav_bar_icon_passive; float* nav_bar_icon_disabled; float* nav_bar_icon_active; } ;
struct TYPE_10__ {size_t texture_index; scalar_t__ enabled; } ;
struct TYPE_9__ {size_t texture_index; scalar_t__ enabled; } ;
struct TYPE_11__ {unsigned int width; unsigned int num_menu_tabs; unsigned int selection_marker_width; unsigned int divider_width; TYPE_6__* menu_tabs; TYPE_2__ resume_tab; TYPE_1__ back_tab; } ;
struct TYPE_15__ {scalar_t__ icon_size; TYPE_5__ textures; TYPE_4__ colors; TYPE_3__ nav_bar; } ;
typedef  TYPE_7__ materialui_handle_t ;

/* Variables and functions */
 unsigned int MUI_NAV_BAR_NUM_ACTION_TABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int,float,unsigned int,unsigned int,int /*<<< orphan*/ ,int,float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,unsigned int,unsigned int,unsigned int,unsigned int,float*) ; 

__attribute__((used)) static void FUNC2(
      materialui_handle_t *mui, video_frame_info_t *video_info,
      unsigned width, unsigned height)
{
   unsigned nav_bar_width           = mui->nav_bar.width;
   unsigned nav_bar_height          = height;
   int nav_bar_x                    = (int)width - (int)mui->nav_bar.width;
   int nav_bar_y                    = 0;
   unsigned num_tabs                = mui->nav_bar.num_menu_tabs + MUI_NAV_BAR_NUM_ACTION_TABS;
   float tab_height                 = (float)height / (float)num_tabs;
   unsigned tab_height_int          = (unsigned)(tab_height + 0.5f);
   unsigned selection_marker_width  = mui->nav_bar.selection_marker_width;
   unsigned selection_marker_height = tab_height_int;
   int selection_marker_x           = (int)width - (int)mui->nav_bar.selection_marker_width;
   unsigned i;

   /* Draw navigation bar background */

   /* > Background */
   FUNC1(
         video_info,
         nav_bar_x,
         nav_bar_y,
         nav_bar_width,
         nav_bar_height,
         width,
         height,
         mui->colors.nav_bar_background);

   /* > Divider */
   FUNC1(
         video_info,
         nav_bar_x,
         nav_bar_y,
         mui->nav_bar.divider_width,
         nav_bar_height,
         width,
         height,
         mui->colors.divider);

   /* Draw tabs */

   /* > Back - bottom */
   FUNC0(video_info,
         mui->icon_size,
         mui->textures.list[mui->nav_bar.back_tab.texture_index],
         nav_bar_x,
         (int)((((float)num_tabs - 0.5f) * tab_height) - ((float)mui->icon_size / 2.0f)),
         width,
         height,
         0,
         1,
         mui->nav_bar.back_tab.enabled ?
               mui->colors.nav_bar_icon_passive : mui->colors.nav_bar_icon_disabled);

   /* > Resume - top */
   FUNC0(video_info,
         mui->icon_size,
         mui->textures.list[mui->nav_bar.resume_tab.texture_index],
         nav_bar_x,
         (int)((0.5f * tab_height) - ((float)mui->icon_size / 2.0f)),
         width,
         height,
         0,
         1,
         mui->nav_bar.resume_tab.enabled ?
               mui->colors.nav_bar_icon_passive : mui->colors.nav_bar_icon_disabled);

   /* Menu tabs - in the centre, top to bottom */
   for (i = 0; i < mui->nav_bar.num_menu_tabs; i++)
   {
      materialui_nav_bar_menu_tab_t *tab = &mui->nav_bar.menu_tabs[i];
      float *draw_color                  = tab->active ?
            mui->colors.nav_bar_icon_active : mui->colors.nav_bar_icon_passive;

      /* Draw icon */
      FUNC0(video_info,
            mui->icon_size,
            mui->textures.list[tab->texture_index],
            nav_bar_x,
            (((float)i + 1.5f) * tab_height) - ((float)mui->icon_size / 2.0f),
            width,
            height,
            0,
            1,
            draw_color);

      /* Draw selection marker */
      FUNC1(
            video_info,
            selection_marker_x,
            (int)((i + 1) * tab_height_int),
            selection_marker_width,
            selection_marker_height,
            width,
            height,
            draw_color);
   }
}