#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
typedef  int /*<<< orphan*/  sdl2_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC2(void *data,
      video_frame_info_t *video_info,
      const char *msg,
      const void *params, void *font)
{
   sdl2_video_t *vid = (sdl2_video_t*)data;
   FUNC1(vid, msg);
   FUNC0("[SDL2]: OSD MSG: %s\n", msg);
}