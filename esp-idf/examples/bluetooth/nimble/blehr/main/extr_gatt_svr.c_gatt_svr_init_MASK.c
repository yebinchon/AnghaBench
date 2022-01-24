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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  gatt_svr_svcs ; 

int
FUNC4(void)
{
    int rc;

    FUNC2();
    FUNC3();

    rc = FUNC1(gatt_svr_svcs);
    if (rc != 0) {
        return rc;
    }

    rc = FUNC0(gatt_svr_svcs);
    if (rc != 0) {
        return rc;
    }

    return 0;
}