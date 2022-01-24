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
struct TYPE_2__ {int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;
struct ble_gap_disc_desc {TYPE_1__ addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_OWN_ADDR_PUBLIC ; 
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  blecent_gap_event ; 
 int /*<<< orphan*/  FUNC4 (struct ble_gap_disc_desc const*) ; 

__attribute__((used)) static void
FUNC5(const struct ble_gap_disc_desc *disc)
{
    int rc;

    /* Don't do anything if we don't care about this advertiser. */
    if (!FUNC4(disc)) {
        return;
    }

    /* Scanning must be stopped before a connection can be initiated. */
    rc = FUNC3();
    if (rc != 0) {
        FUNC0(DEBUG, "Failed to cancel scan; rc=%d\n", rc);
        return;
    }

    /* Try to connect the the advertiser.  Allow 30 seconds (30000 ms) for
     * timeout.
     */

    rc = FUNC2(BLE_OWN_ADDR_PUBLIC, &disc->addr, 30000, NULL,
                         blecent_gap_event, NULL);
    if (rc != 0) {
        FUNC0(ERROR, "Error: Failed to connect to device; addr_type=%d "
                    "addr=%s\n",
                    disc->addr.type, FUNC1(disc->addr.val));
        return;
    }
}