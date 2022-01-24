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
struct TYPE_3__ {int /*<<< orphan*/  type; int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ ble_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SETTINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  prov ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  tag ; 

__attribute__((used)) static void
FUNC8(void)
{
    int err;
    ble_addr_t addr;

    FUNC0(tag, "Bluetooth initialized\n");

    /* Use NRPA */
    err = FUNC3(1, &addr);
    FUNC2(err == 0);
    err = FUNC4(addr.val);
    FUNC2(err == 0);

    err = FUNC5(addr.type, &prov, &comp);
    if (err) {
        FUNC0(tag, "Initializing mesh failed (err %d)\n", err);
        return;
    }

    FUNC0(tag, "Mesh initialized\n");

    if (FUNC1(CONFIG_SETTINGS)) {
        FUNC7();
    }

    if (FUNC6()) {
        FUNC0(tag, "Mesh network restored from flash\n");
    }
}