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
struct TYPE_3__ {int height; } ;
typedef  TYPE_1__ video_frame_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(video_frame_info_t *video_info, int x, int y,
      unsigned width, unsigned height)
{
   FUNC1(x, video_info->height - y - height, width, height);
   FUNC0(GL_SCISSOR_TEST);
}