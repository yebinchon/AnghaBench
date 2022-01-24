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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint16_t ;
struct bt_mesh_model {int dummy; } ;

/* Variables and functions */
 int BLE_HS_EINVAL ; 
 scalar_t__ CID_VENDOR ; 
 scalar_t__ STANDARD_TEST_ID ; 
 scalar_t__ TEST_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_model*) ; 
 int has_reg_fault ; 
 scalar_t__ recent_test_id ; 

__attribute__((used)) static int
FUNC2(struct bt_mesh_model *model, uint8_t test_id, uint16_t company_id)
{
    if (company_id != CID_VENDOR) {
        return -BLE_HS_EINVAL;
    }

    if (test_id != STANDARD_TEST_ID && test_id != TEST_ID) {
        return -BLE_HS_EINVAL;
    }

    recent_test_id = test_id;
    has_reg_fault = true;
    FUNC0(FUNC1(model));

    return 0;
}