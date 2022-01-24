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
struct timeval {long tv_sec; long tv_usec; } ;
typedef  long int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ SNTP_SYNC_MODE_IMMED ; 
 scalar_t__ SNTP_SYNC_MODE_SMOOTH ; 
 int /*<<< orphan*/  SNTP_SYNC_STATUS_COMPLETED ; 
 int /*<<< orphan*/  SNTP_SYNC_STATUS_IN_PROGRESS ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ sntp_sync_mode ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 

void __attribute__((weak)) FUNC6(struct timeval *tv)
{
    if (sntp_sync_mode == SNTP_SYNC_MODE_IMMED) {
        FUNC3(tv, NULL);
        FUNC4(SNTP_SYNC_STATUS_COMPLETED);
    } else if (sntp_sync_mode == SNTP_SYNC_MODE_SMOOTH) {
        struct timeval tv_now;
        FUNC2(&tv_now, NULL);
        int64_t cpu_time = (int64_t)tv_now.tv_sec * 1000000L + (int64_t)tv_now.tv_usec;
        int64_t sntp_time = (int64_t)tv->tv_sec * 1000000L + (int64_t)tv->tv_usec;
        int64_t delta = sntp_time - cpu_time;
        struct timeval tv_delta = { .tv_sec = delta / 1000000L, .tv_usec = delta % 1000000L };
        if (FUNC1(&tv_delta, NULL) == -1) {
            FUNC0(TAG, "Function adjtime don't update time because the error is very big");
            FUNC3(tv, NULL);
            FUNC0(TAG, "Time was synchronized through settimeofday");
            FUNC4(SNTP_SYNC_STATUS_COMPLETED);
        } else {
            FUNC4(SNTP_SYNC_STATUS_IN_PROGRESS);
        }
    }
    if (&time_sync_notification_cb) {
        FUNC5(tv);
    }
}