#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ role; int /*<<< orphan*/  local_bda; int /*<<< orphan*/  pairing_bda; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ BT_OCTET16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/  const*,int) ; 

void FUNC6( tSMP_CB *p_cb, BT_OCTET16 p2)
{
    UINT8       *p = (UINT8 *)p2;
    BD_ADDR     remote_bda;
    tBLE_ADDR_TYPE  addr_type = 0;
    FUNC2 ("smp_gen_p2_4_confirm\n");
    if (!FUNC1(p_cb->pairing_bda, remote_bda, &addr_type)) {
        FUNC3("can not generate confirm p2 for unknown device\n");
        return;
    }

    FUNC2 ("smp_gen_p2_4_confirm\n");

    FUNC4(p, 0, sizeof(BT_OCTET16));

    if (p_cb->role == HCI_ROLE_MASTER) {
        /* LSB ra */
        FUNC0(p, remote_bda);
        /* ia */
        FUNC0(p, p_cb->local_bda);
    } else {
        /* LSB ra */
        FUNC0(p, p_cb->local_bda);
        /* ia */
        FUNC0(p, remote_bda);
    }
#if SMP_DEBUG == TRUE
    FUNC2("p2 = padding || ia || ra");
    FUNC5(p2, (const UINT8 *)"p2", 16);
#endif
}