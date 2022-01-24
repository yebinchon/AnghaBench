#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* blend_end ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_1__* menu_disp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(video_frame_info_t *video_info)
{
   if (menu_disp && menu_disp->blend_end)
      menu_disp->blend_end(video_info);
}