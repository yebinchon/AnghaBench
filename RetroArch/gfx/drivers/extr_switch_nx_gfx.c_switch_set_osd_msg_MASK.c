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
typedef  int /*<<< orphan*/  switch_video_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,char const*,void const*) ; 

__attribute__((used)) static void FUNC1(void *data,
            video_frame_info_t *video_info,
            const char *msg,
            const void *params, void *font)
{
    switch_video_t *sw = (switch_video_t *)data;

    if (sw)
        FUNC0(video_info, font, msg, params);
}