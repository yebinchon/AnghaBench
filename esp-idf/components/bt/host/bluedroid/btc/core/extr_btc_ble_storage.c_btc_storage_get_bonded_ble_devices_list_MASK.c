#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {char* irk; char* static_addr; int /*<<< orphan*/  addr_type; } ;
typedef  TYPE_3__ tBTM_LE_PID_KEYS ;
typedef  int /*<<< orphan*/  tBTM_LE_PENC_KEYS ;
typedef  int /*<<< orphan*/  tBTM_LE_PCSRK_KEYS ;
typedef  int /*<<< orphan*/  tBTM_LE_KEY_VALUE ;
struct TYPE_9__ {int /*<<< orphan*/  static_addr; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  irk; } ;
struct TYPE_10__ {TYPE_1__ pid_key; int /*<<< orphan*/  key_mask; int /*<<< orphan*/  pcsrk_key; int /*<<< orphan*/  penc_key; } ;
struct TYPE_12__ {TYPE_2__ bond_key; int /*<<< orphan*/ * bd_addr; } ;
typedef  TYPE_4__ esp_ble_bond_dev_t ;
typedef  int /*<<< orphan*/  btc_config_section_iter_t ;
typedef  scalar_t__ bt_status_t ;
struct TYPE_13__ {char* address; } ;
typedef  TYPE_5__ bt_bdaddr_t ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_BLE_STORAGE_DEV_TYPE_STR ; 
 int /*<<< orphan*/  BTM_LE_KEY_PCSRK ; 
 int /*<<< orphan*/  BTM_LE_KEY_PENC ; 
 int /*<<< orphan*/  BTM_LE_KEY_PID ; 
 int BT_DEVICE_TYPE_BLE ; 
 int BT_OCTET16_LEN ; 
 scalar_t__ BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  ESP_BLE_CSR_KEY_MASK ; 
 int /*<<< orphan*/  ESP_BLE_ENC_KEY_MASK ; 
 int /*<<< orphan*/  ESP_BLE_ID_KEY_MASK ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (char const*,TYPE_5__*) ; 

bt_status_t FUNC11(esp_ble_bond_dev_t *bond_dev, int dev_num)
{
    bt_bdaddr_t bd_addr;
    char buffer[sizeof(tBTM_LE_KEY_VALUE)] = {0};

    FUNC2();
    for (const btc_config_section_iter_t *iter = FUNC3(); iter != FUNC4();
            iter = FUNC6(iter)) {

        if (dev_num-- <= 0) {
            break;
        }
        uint32_t device_type = 0;
        const char *name = FUNC5(iter);

        if (!FUNC9(name) ||
                !FUNC1(name, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&device_type) ||
                !(device_type & BT_DEVICE_TYPE_BLE)) {
            dev_num ++;
            continue;
        }

        FUNC10(name, &bd_addr);
        FUNC8(bond_dev->bd_addr, bd_addr.address, sizeof(bt_bdaddr_t));
        //resolve the peer device long term key
        if (FUNC0(&bd_addr, BTM_LE_KEY_PENC, buffer, sizeof(tBTM_LE_PENC_KEYS)) == BT_STATUS_SUCCESS) {
            bond_dev->bond_key.key_mask |= ESP_BLE_ENC_KEY_MASK;
            FUNC8(&bond_dev->bond_key.penc_key, buffer, sizeof(tBTM_LE_PENC_KEYS));
        }
        //resolve the peer device csrk
        if (FUNC0(&bd_addr, BTM_LE_KEY_PCSRK, buffer, sizeof(tBTM_LE_PCSRK_KEYS)) == BT_STATUS_SUCCESS) {
            bond_dev->bond_key.key_mask |= ESP_BLE_CSR_KEY_MASK;
            FUNC8(&bond_dev->bond_key.pcsrk_key, buffer, sizeof(tBTM_LE_PCSRK_KEYS));
        }
        //resolve the peer device irk
        if (FUNC0(&bd_addr, BTM_LE_KEY_PID, buffer, sizeof(tBTM_LE_PID_KEYS)) == BT_STATUS_SUCCESS) {
            bond_dev->bond_key.key_mask |= ESP_BLE_ID_KEY_MASK;
            tBTM_LE_PID_KEYS *pid_key = (tBTM_LE_PID_KEYS *) buffer;
            FUNC8(&bond_dev->bond_key.pid_key.irk, pid_key->irk, BT_OCTET16_LEN);
            bond_dev->bond_key.pid_key.addr_type = pid_key->addr_type;
            FUNC8(&bond_dev->bond_key.pid_key.static_addr, pid_key->static_addr, sizeof(BD_ADDR));
        }
        //serch for the next bond device
        bond_dev++;
    }
    FUNC7();

    return BT_STATUS_SUCCESS;
}