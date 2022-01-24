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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  bt_status_t ;

/* Variables and functions */
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR ; 
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR ; 
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR ; 
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR ; 
 int /*<<< orphan*/  BTC_BLE_STORAGE_LOCAL_ADAPTER_STR ; 
#define  BTC_LE_LOCAL_KEY_DHK 131 
#define  BTC_LE_LOCAL_KEY_ER 130 
#define  BTC_LE_LOCAL_KEY_IR 129 
#define  BTC_LE_LOCAL_KEY_IRK 128 
 int /*<<< orphan*/  BT_STATUS_FAIL ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int const*,int) ; 

__attribute__((used)) static bt_status_t FUNC2(char *key,
                                          uint8_t key_type,
                                          uint8_t key_length)
{
    const char* name;
    switch (key_type) {
    case BTC_LE_LOCAL_KEY_IR:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR;
        break;
    case BTC_LE_LOCAL_KEY_IRK:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR;
        break;
    case BTC_LE_LOCAL_KEY_DHK:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR;
        break;
    case BTC_LE_LOCAL_KEY_ER:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR;
        break;
    default:
        return BT_STATUS_FAIL;
    }

    int ret = FUNC1(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, name, (const uint8_t *)key, key_length);
    FUNC0();
    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}