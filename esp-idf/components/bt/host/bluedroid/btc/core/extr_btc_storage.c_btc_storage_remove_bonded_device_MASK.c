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
typedef  int /*<<< orphan*/  bt_status_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;
typedef  int /*<<< orphan*/  bdstr_t ;
typedef  int /*<<< orphan*/  bdstr ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_TYPE_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_PIN_LENGTH_STR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_STATUS_FAIL ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

bt_status_t FUNC7(bt_bdaddr_t *remote_bd_addr)
{
    bdstr_t bdstr;
    FUNC1(remote_bd_addr, bdstr, sizeof(bdstr));
    int ret = 1;
    FUNC0("Add to storage: Remote device:%s\n", bdstr);

    FUNC4();
    if (FUNC2(bdstr, BTC_STORAGE_LINK_KEY_TYPE_STR)) {
        ret &= FUNC5(bdstr, BTC_STORAGE_LINK_KEY_TYPE_STR);
    }
    if (FUNC2(bdstr, BTC_STORAGE_PIN_LENGTH_STR)) {
        ret &= FUNC5(bdstr, BTC_STORAGE_PIN_LENGTH_STR);
    }
    if (FUNC2(bdstr, BTC_STORAGE_LINK_KEY_STR)) {
        ret &= FUNC5(bdstr, BTC_STORAGE_LINK_KEY_STR);
    }
    /* write bonded info immediately */
    FUNC3();
    FUNC6();

    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}