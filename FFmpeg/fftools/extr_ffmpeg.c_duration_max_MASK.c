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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  AVRational ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static AVRational FUNC1(int64_t tmp, int64_t *duration, AVRational tmp_time_base,
                               AVRational time_base)
{
    int ret;

    if (!*duration) {
        *duration = tmp;
        return tmp_time_base;
    }

    ret = FUNC0(*duration, time_base, tmp, tmp_time_base);
    if (ret < 0) {
        *duration = tmp;
        return tmp_time_base;
    }

    return time_base;
}