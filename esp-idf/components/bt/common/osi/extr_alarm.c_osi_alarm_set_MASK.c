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
typedef  int /*<<< orphan*/  period_ms_t ;
typedef  int /*<<< orphan*/  osi_alarm_t ;
typedef  int /*<<< orphan*/  osi_alarm_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

osi_alarm_err_t FUNC1(osi_alarm_t *alarm, period_ms_t timeout)
{
    return FUNC0(alarm, timeout, FALSE);
}