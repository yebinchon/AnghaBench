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
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int64_t FUNC3(const char *context, const char *timestr,
                          int is_duration)
{
    int64_t us;
    if (FUNC1(&us, timestr, is_duration) < 0) {
        FUNC0(NULL, AV_LOG_FATAL, "Invalid %s specification for %s: %s\n",
               is_duration ? "duration" : "date", context, timestr);
        FUNC2(1);
    }
    return us;
}