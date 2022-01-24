#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  pseudo_addr; int /*<<< orphan*/  cur_rand_addr; int /*<<< orphan*/  active_addr_type; } ;
struct TYPE_5__ {TYPE_1__ ble; int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_2__ tBTM_SEC_DEV_REC ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BLE_ADDR_RANDOM ; 
 int /*<<< orphan*/  BTM_BLE_ADDR_RRA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *p_rec, void *p)
{
    tBTM_SEC_DEV_REC    *match_rec = (tBTM_SEC_DEV_REC *) p_rec;
    UINT8       addr_type = BLE_ADDR_RANDOM;
    BD_ADDR     bda;
    UINT8       *pp = (UINT8 *)p + 1;
    UINT8           evt_type;

    FUNC1 ("btm_ble_resolve_random_addr_on_adv ");

    FUNC3    (evt_type, pp);
    FUNC3    (addr_type, pp);
    FUNC2   (bda, pp);

    if (match_rec) {
        FUNC0("Random match");
        match_rec->ble.active_addr_type = BTM_BLE_ADDR_RRA;
        FUNC6(match_rec->ble.cur_rand_addr, bda, BD_ADDR_LEN);

        if (FUNC4(match_rec, bda)) {
            FUNC6(bda, match_rec->bd_addr, BD_ADDR_LEN);
        } else {
            // Assign the original address to be the current report address
            FUNC6(bda, match_rec->ble.pseudo_addr, BD_ADDR_LEN);
        }
    }

    FUNC5(bda, addr_type, evt_type, pp);

    return;
}