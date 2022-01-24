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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  own_addr_type ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
    int rc;

    rc = FUNC2(0);
    if (rc != 0) {
        FUNC0(TAG, "Error loading address");
        return;
    }

    /* Figure out address to use while advertising (no privacy for now) */
    rc = FUNC1(0, &own_addr_type);
    if (rc != 0) {
        FUNC0(TAG, "error determining address type; rc=%d\n", rc);
        return;
    }

    /* Begin advertising. */
    FUNC3();
}