#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_2__ video_frame_info_t ;
struct TYPE_7__ {int /*<<< orphan*/  selection_border; int /*<<< orphan*/  selection; } ;
struct TYPE_9__ {TYPE_1__ theme_dynamic; } ;
typedef  TYPE_3__ ozone_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC2(ozone_handle_t *ozone,
      video_frame_info_t *video_info,
      int x_offset,
      unsigned width, unsigned height,
      size_t y, float alpha)
{
   FUNC1(ozone->theme_dynamic.selection_border, alpha);
   FUNC1(ozone->theme_dynamic.selection, alpha);

   /* Fill */
   FUNC0(video_info, x_offset, (int)y, width, height - 5, video_info->width, video_info->height, ozone->theme_dynamic.selection);

   /* Borders (can't do one single quad because of alpha) */

   /* Top */
   FUNC0(video_info, x_offset - 3, (int)(y - 3), width + 6, 3, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);

   /* Bottom */
   FUNC0(video_info, x_offset - 3, (int)(y + height - 5), width + 6, 3, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);

   /* Left */
   FUNC0(video_info, (int)(x_offset - 3), (int)y, 3, height - 5, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);

   /* Right */
   FUNC0(video_info, x_offset + width, (int)y, 3, height - 5, video_info->width, video_info->height, ozone->theme_dynamic.selection_border);
}