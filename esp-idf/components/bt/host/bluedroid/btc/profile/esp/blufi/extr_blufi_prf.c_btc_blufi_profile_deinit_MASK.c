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
typedef  int /*<<< orphan*/  tGATT_STATUS ;
struct TYPE_2__ {int /*<<< orphan*/  gatt_if; int /*<<< orphan*/  handle_srvc; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  GATT_ERROR ; 
 int /*<<< orphan*/  GATT_SUCCESS ; 
 TYPE_1__ blufi_env ; 

__attribute__((used)) static tGATT_STATUS FUNC4(void)
{
    if (!blufi_env.enabled) {
        FUNC3("BLUFI already de-initialized");
        return GATT_ERROR;
    }

    FUNC2(blufi_env.handle_srvc);
    FUNC1(blufi_env.handle_srvc);
    /* register the BLUFI profile to the BTA_GATTS module*/
    FUNC0(blufi_env.gatt_if);

    return GATT_SUCCESS;
}