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
typedef  scalar_t__ u16_t ;
struct bt_mesh_hci_cp_set_adv_data {int len; int* data; int /*<<< orphan*/  member_0; } ;
struct bt_mesh_adv_data {int data_len; int type; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BLE_MESH_HCI_OP_SET_ADV_DATA ; 
 scalar_t__ BLE_MESH_HCI_OP_SET_SCAN_RSP_DATA ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(u16_t hci_op, const struct bt_mesh_adv_data *ad, size_t ad_len)
{
    struct bt_mesh_hci_cp_set_adv_data param = {0};
    int i;

    if (ad == NULL || ad_len == 0) {
        return 0;
    }

    for (i = 0; i < ad_len; i++) {
        /* Check if ad fit in the remaining buffer */
        if (param.len + ad[i].data_len + 2 > 31) {
            return -EINVAL;
        }

        param.data[param.len++] = ad[i].data_len + 1;
        param.data[param.len++] = ad[i].type;

        FUNC3(&param.data[param.len], ad[i].data, ad[i].data_len);
        param.len += ad[i].data_len;
    }

    /* Set adv data and scan rsp data. */
    if (hci_op == BLE_MESH_HCI_OP_SET_ADV_DATA) {
        FUNC0(FUNC1(param.data, param.len));
    } else if (hci_op == BLE_MESH_HCI_OP_SET_SCAN_RSP_DATA) {
        FUNC0(FUNC2(param.data, param.len));
    }

    return 0;
}