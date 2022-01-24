#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
typedef  scalar_t__ RESET_REASON ;

/* Variables and functions */
 scalar_t__ DEEPSLEEP_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ start ; 

__attribute__((used)) static void FUNC5(void)
{
    struct timeval stop;
    RESET_REASON reason = FUNC4(0);
    FUNC0(reason == DEEPSLEEP_RESET);
    FUNC2(&stop, NULL);
    // Time dt_ms must in any case be positive.
    int dt_ms = (stop.tv_sec - start.tv_sec) * 1000 + (stop.tv_usec - start.tv_usec) / 1000;
    FUNC3("delta time = %d \n", dt_ms);
    FUNC1(dt_ms > 0, "Time in deep sleep is negative");
}