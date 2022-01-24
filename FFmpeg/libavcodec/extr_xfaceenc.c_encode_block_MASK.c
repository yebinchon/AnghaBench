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
typedef  int /*<<< orphan*/  ProbRangesQueue ;

/* Variables and functions */
 size_t XFACE_COLOR_BLACK ; 
 size_t XFACE_COLOR_GREY ; 
 size_t XFACE_COLOR_WHITE ; 
 int XFACE_WIDTH ; 
 scalar_t__ FUNC0 (char*,int,int) ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/ ** ff_xface_probranges_per_level ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int) ; 

__attribute__((used)) static void FUNC4(char *bitmap, int w, int h, int level, ProbRangesQueue *pq)
{
    if (FUNC1(bitmap, w, h)) {
        FUNC2(pq, &ff_xface_probranges_per_level[level][XFACE_COLOR_WHITE]);
    } else if (FUNC0(bitmap, w, h)) {
        FUNC2(pq, &ff_xface_probranges_per_level[level][XFACE_COLOR_BLACK]);
        FUNC3(pq, bitmap, w, h);
    } else {
        FUNC2(pq, &ff_xface_probranges_per_level[level][XFACE_COLOR_GREY]);
        w /= 2;
        h /= 2;
        level++;
        FUNC4(bitmap,                       w, h, level, pq);
        FUNC4(bitmap + w,                   w, h, level, pq);
        FUNC4(bitmap + h * XFACE_WIDTH,     w, h, level, pq);
        FUNC4(bitmap + w + h * XFACE_WIDTH, w, h, level, pq);
    }
}