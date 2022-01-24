#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_1__ tBTM_SEC_DEV_REC ;
struct TYPE_8__ {int /*<<< orphan*/  enc_rand; int /*<<< orphan*/  ediv; } ;
typedef  TYPE_2__ tBTM_CB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_9__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ BT_OCTET8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BT_OCTET8_LEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__) ; 
 TYPE_2__ btm_cb ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(UINT16 handle, UINT8 rand[8], UINT16 ediv)
{
    tBTM_CB *p_cb = &btm_cb;
    tBTM_SEC_DEV_REC *p_dev_rec = FUNC2 (handle);
    BT_OCTET8 dummy_stk = {0};

    FUNC0 ("btm_ble_ltk_request");

    p_cb->ediv = ediv;

    FUNC3(p_cb->enc_rand, rand, BT_OCTET8_LEN);

    if (p_dev_rec != NULL) {
        if (!FUNC4(p_dev_rec->bd_addr)) {
            FUNC1(p_dev_rec->bd_addr, FALSE, dummy_stk);
        }
    }

}