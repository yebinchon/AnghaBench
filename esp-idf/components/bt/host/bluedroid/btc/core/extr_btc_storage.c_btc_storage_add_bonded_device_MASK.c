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
typedef  int /*<<< orphan*/  bt_status_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;
typedef  int bdstr_t ;
typedef  int /*<<< orphan*/  bdstr ;
typedef  int /*<<< orphan*/  LINK_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_TYPE_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_PIN_LENGTH_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BT_STATUS_FAIL ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

bt_status_t FUNC7(bt_bdaddr_t *remote_bd_addr,
        LINK_KEY link_key,
        uint8_t key_type,
        uint8_t pin_length)
{
    bdstr_t bdstr;

    FUNC1(remote_bd_addr, bdstr, sizeof(bdstr));
    FUNC0("add to storage: Remote device:%s\n", bdstr);

    FUNC3();
    int ret = FUNC5(bdstr, BTC_STORAGE_LINK_KEY_TYPE_STR, (int)key_type);
    ret &= FUNC5(bdstr, BTC_STORAGE_PIN_LENGTH_STR, (int)pin_length);
    ret &= FUNC4(bdstr, BTC_STORAGE_LINK_KEY_STR, link_key, sizeof(LINK_KEY));
    /* write bonded info immediately */
    FUNC2();
    FUNC6();

    FUNC0("Storage add rslt %d\n", ret);
    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}