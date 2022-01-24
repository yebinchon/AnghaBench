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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
struct timeval {int tv_sec; int tv_usec; } ;

/* Variables and functions */
 int exit_flag ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;
    struct timeval tv_time = { .tv_sec = 1520000000, .tv_usec = 900000 };

    // although exit flag is set in another task, checking (exit_flag == false) is safe
    while (exit_flag == false) {
        tv_time.tv_sec += 1;
        FUNC1(&tv_time, NULL);
        FUNC0(&tv_time, NULL);
    }
    FUNC3(*sema);
    FUNC2(NULL);
}