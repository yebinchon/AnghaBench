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
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_2__ {int /*<<< orphan*/  (* supports_ble ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_ILLEGAL_VALUE ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

tBTM_STATUS FUNC4(void)
{
    tBTM_STATUS status = BTM_SUCCESS;
    if (!FUNC2()->supports_ble()) {
        return BTM_ILLEGAL_VALUE;
    }

    FUNC1();

    status = FUNC0();

    return status;
}