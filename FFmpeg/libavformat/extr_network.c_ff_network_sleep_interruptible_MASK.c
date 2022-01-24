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
typedef  int /*<<< orphan*/  AVIOInterruptCB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int POLLING_TIME ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(int64_t timeout, AVIOInterruptCB *int_cb)
{
    int64_t wait_start = FUNC2();

    while (1) {
        int64_t time_left;

        if (FUNC4(int_cb))
            return AVERROR_EXIT;

        time_left = timeout - (FUNC2() - wait_start);
        if (time_left <= 0)
            return FUNC0(ETIMEDOUT);

        FUNC3(FUNC1(time_left, POLLING_TIME * 1000));
    }
}