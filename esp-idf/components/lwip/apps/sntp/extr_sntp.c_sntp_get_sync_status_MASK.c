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
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef  scalar_t__ sntp_sync_status_t ;

/* Variables and functions */
 scalar_t__ SNTP_SYNC_STATUS_COMPLETED ; 
 scalar_t__ SNTP_SYNC_STATUS_IN_PROGRESS ; 
 scalar_t__ SNTP_SYNC_STATUS_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ sntp_sync_status ; 

sntp_sync_status_t FUNC2(void)
{
    sntp_sync_status_t ret_sync_status = SNTP_SYNC_STATUS_RESET;
    sntp_sync_status_t sync_status = sntp_sync_status;
    if (sync_status == SNTP_SYNC_STATUS_COMPLETED) {
        FUNC1(SNTP_SYNC_STATUS_RESET);
        ret_sync_status = SNTP_SYNC_STATUS_COMPLETED;
    } else if (sync_status == SNTP_SYNC_STATUS_IN_PROGRESS) {
        struct timeval outdelta;
        FUNC0(NULL, &outdelta);
        if (outdelta.tv_sec == 0 && outdelta.tv_usec == 0) {
            FUNC1(SNTP_SYNC_STATUS_RESET);
            ret_sync_status = SNTP_SYNC_STATUS_COMPLETED;
        } else {
            ret_sync_status = SNTP_SYNC_STATUS_IN_PROGRESS;
        }
    }
    return ret_sync_status;
}