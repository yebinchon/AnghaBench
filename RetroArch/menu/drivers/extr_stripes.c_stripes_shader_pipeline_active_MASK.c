#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ menu_shader_pipeline; } ;
typedef  TYPE_1__ video_frame_info_t ;

/* Variables and functions */
 scalar_t__ XMB_SHADER_PIPELINE_WALLPAPER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC2(video_frame_info_t *video_info)
{
   if (FUNC1(FUNC0(), "stripes"))
      return false;
   if (video_info->menu_shader_pipeline == XMB_SHADER_PIPELINE_WALLPAPER)
      return false;
   return true;
}