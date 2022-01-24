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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  own_addr_type ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void)
{
    int rc;

    rc = FUNC4(0);
    FUNC1(rc == 0);

    /* Figure out address to use while advertising (no privacy for now) */
    rc = FUNC3(0, &own_addr_type);
    if (rc != 0) {
        FUNC0(ERROR, "error determining address type; rc=%d\n", rc);
        return;
    }

    /* Printing ADDR */
    uint8_t addr_val[6] = {0};
    rc = FUNC2(own_addr_type, addr_val, NULL);

    FUNC0(INFO, "Device Address: ");
    FUNC6(addr_val);
    FUNC0(INFO, "\n");
    /* Begin advertising. */
    FUNC5();
}