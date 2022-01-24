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
typedef  int /*<<< orphan*/  btc_config_section_iter_t ;
typedef  int /*<<< orphan*/  bt_status_t ;
typedef  int /*<<< orphan*/  bt_bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_TYPE_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_PIN_LENGTH_STR ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 

bt_status_t FUNC10(bt_bdaddr_t *bond_dev, int dev_num)
{
    bt_bdaddr_t bd_addr;

    FUNC1();
    for (const btc_config_section_iter_t *iter = FUNC2(); iter != FUNC3();
            iter = FUNC5(iter)) {

        if (dev_num-- <= 0) {
            break;
        }

        const char *name = FUNC4(iter);

        if (FUNC8(name) &&
            FUNC0(name, BTC_STORAGE_LINK_KEY_TYPE_STR) &&
            FUNC0(name, BTC_STORAGE_PIN_LENGTH_STR) &&
            FUNC0(name, BTC_STORAGE_LINK_KEY_STR)) {
            FUNC9(name, &bd_addr);
            FUNC7(bond_dev, &bd_addr, sizeof(bt_bdaddr_t));
            bond_dev++;
        }
    }
    FUNC6();

    return BT_STATUS_SUCCESS;
}