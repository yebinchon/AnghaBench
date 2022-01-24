#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  link_key ;
typedef  int /*<<< orphan*/  btc_config_section_iter_t ;
typedef  int /*<<< orphan*/  bt_status_t ;
struct TYPE_6__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ bt_bdaddr_t ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_7__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  LINK_KEY ;
typedef  TYPE_2__ DEV_CLASS ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BTC_STORAGE_DEV_CLASS_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_LINK_KEY_TYPE_STR ; 
 int /*<<< orphan*/  BTC_STORAGE_PIN_LENGTH_STR ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  const* FUNC7 () ; 
 char* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_2__) ; 

__attribute__((used)) static bt_status_t FUNC14(int add)
{
    BOOLEAN bt_linkkey_file_found = FALSE;

    FUNC5();
    for (const btc_config_section_iter_t *iter = FUNC6(); iter != FUNC7(); iter = FUNC9(iter)) {
        const char *name = FUNC8(iter);
        if (!FUNC11(name)) {
            continue;
        }

        FUNC1("Remote device:%s\n", name);
        LINK_KEY link_key;
        size_t size = sizeof(link_key);
        if (FUNC3(name, BTC_STORAGE_LINK_KEY_STR, link_key, &size)) {
            int linkkey_type;
            if (FUNC4(name, BTC_STORAGE_LINK_KEY_TYPE_STR, &linkkey_type)) {
                bt_bdaddr_t bd_addr;
                FUNC12(name, &bd_addr);
                if (add) {
                    DEV_CLASS dev_class = {0, 0, 0};
                    int cod;
                    int pin_length = 0;
                    if (FUNC4(name, BTC_STORAGE_DEV_CLASS_STR, &cod)) {
                        FUNC13((UINT32)cod, dev_class);
                    }
                    FUNC4(name, BTC_STORAGE_PIN_LENGTH_STR, &pin_length);
#if (SMP_INCLUDED == TRUE)
                    FUNC0(bd_addr.address, dev_class, link_key, 0, 0,
                                    (UINT8)linkkey_type, 0, pin_length);
#endif  ///SMP_INCLUDED == TRUE
                }
                bt_linkkey_file_found = TRUE;
            } else {
                FUNC2("bounded device:%s, LinkKeyType or PinLength is invalid\n", name);
            }
        }
        if (!bt_linkkey_file_found) {
            FUNC1("Remote device:%s, no link key\n", name);
        }
    }
    FUNC10();

    return BT_STATUS_SUCCESS;
}