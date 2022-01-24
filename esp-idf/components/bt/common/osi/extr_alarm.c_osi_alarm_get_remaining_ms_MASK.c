#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  period_ms_t ;
struct TYPE_3__ {int deadline_us; } ;
typedef  TYPE_1__ osi_alarm_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_MUTEX_MAX_TIMEOUT ; 
 int /*<<< orphan*/ * alarm_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 

period_ms_t FUNC4(const osi_alarm_t *alarm)
{
    FUNC0(alarm_mutex != NULL);
    int64_t dt_us = 0;

    FUNC2(&alarm_mutex, OSI_MUTEX_MAX_TIMEOUT);
    dt_us = alarm->deadline_us - FUNC1();
    FUNC3(&alarm_mutex);

    return (dt_us > 0) ? (period_ms_t)(dt_us / 1000) : 0;
}