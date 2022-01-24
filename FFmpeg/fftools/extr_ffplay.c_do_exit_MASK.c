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
typedef  int /*<<< orphan*/  VideoState ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_QUIET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ renderer ; 
 scalar_t__ show_status ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  vfilters_list ; 
 scalar_t__ window ; 

__attribute__((used)) static void FUNC10(VideoState *is)
{
    if (is) {
        FUNC8(is);
    }
    if (renderer)
        FUNC0(renderer);
    if (window)
        FUNC1(window);
    FUNC9();
#if CONFIG_AVFILTER
    av_freep(&vfilters_list);
#endif
    FUNC5();
    if (show_status)
        FUNC7("\n");
    FUNC2();
    FUNC4(NULL, AV_LOG_QUIET, "%s", "");
    FUNC6(0);
}