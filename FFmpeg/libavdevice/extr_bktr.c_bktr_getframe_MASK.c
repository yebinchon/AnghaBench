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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ last_frame_time ; 
 scalar_t__ nsignals ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(uint64_t per_frame)
{
    uint64_t curtime;

    curtime = FUNC0();
    if (!last_frame_time
        || ((last_frame_time + per_frame) > curtime)) {
        if (!FUNC2(last_frame_time + per_frame + per_frame / 8 - curtime)) {
            if (!nsignals)
                FUNC1(NULL, AV_LOG_INFO,
                       "SLEPT NO signals - %d microseconds late\n",
                       (int)(FUNC0() - last_frame_time - per_frame));
        }
    }
    nsignals = 0;
    last_frame_time = curtime;
}