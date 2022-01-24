#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_SP_KEY_TYPE ;
struct TYPE_2__ {scalar_t__ pairing_state; } ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ BTM_PAIR_STATE_KEY_ENTRY ; 
 TYPE_1__ btm_cb ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(BD_ADDR bd_addr, tBTM_SP_KEY_TYPE type)
{
    /* This API only make sense between PASSKEY_REQ and SP complete */
    if (btm_cb.pairing_state == BTM_PAIR_STATE_KEY_ENTRY) {
        FUNC0 (bd_addr, type);
    }
}