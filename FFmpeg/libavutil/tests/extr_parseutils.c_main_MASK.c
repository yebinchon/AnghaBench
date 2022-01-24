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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
    FUNC0("Testing av_parse_video_rate()\n");
    FUNC5();

    FUNC0("\nTesting av_parse_color()\n");
    FUNC3();

    FUNC0("\nTesting av_small_strptime()\n");
    FUNC6();

    FUNC0("\nTesting av_parse_time()\n");
    FUNC4();

    FUNC0("\nTesting av_get_known_color_name()\n");
    FUNC2();

    FUNC0("\nTesting av_find_info_tag()\n");
    FUNC1();
    return 0;
}