#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ role; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  local_bda; int /*<<< orphan*/  pairing_bda; } ;
typedef  TYPE_1__ tSMP_CB ;
typedef  int /*<<< orphan*/  tBLE_ADDR_TYPE ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  scalar_t__ BT_OCTET16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ HCI_ROLE_MASTER ; 
 int /*<<< orphan*/  SMP_OPCODE_PAIRING_REQ ; 
 int /*<<< orphan*/  SMP_OPCODE_PAIRING_RSP ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

void FUNC8( tSMP_CB *p_cb, BT_OCTET16 p1)
{
    UINT8 *p = (UINT8 *)p1;
    tBLE_ADDR_TYPE    addr_type = 0;
    BD_ADDR           remote_bda;

    FUNC2 ("smp_gen_p1_4_confirm\n");

    if (!FUNC1(p_cb->pairing_bda, remote_bda, &addr_type)) {
        FUNC3("can not generate confirm for unknown device\n");
        return;
    }

    FUNC0( p_cb->pairing_bda, p_cb->local_bda, &p_cb->addr_type);

    if (p_cb->role == HCI_ROLE_MASTER) {
        /* LSB : rat': initiator's(local) address type */
        FUNC4(p, p_cb->addr_type);
        /* LSB : iat': responder's address type */
        FUNC4(p, addr_type);
        /* concatinate preq */
        FUNC5(p_cb, &p, SMP_OPCODE_PAIRING_REQ);
        /* concatinate pres */
        FUNC6(p_cb, &p, SMP_OPCODE_PAIRING_RSP);
    } else {
        /* LSB : iat': initiator's address type */
        FUNC4(p, addr_type);
        /* LSB : rat': responder's(local) address type */
        FUNC4(p, p_cb->addr_type);
        /* concatinate preq */
        FUNC6(p_cb, &p, SMP_OPCODE_PAIRING_REQ);
        /* concatinate pres */
        FUNC5(p_cb, &p, SMP_OPCODE_PAIRING_RSP);
    }
#if SMP_DEBUG == TRUE
    FUNC2("p1 = pres || preq || rat' || iat'\n");
    FUNC7 ((UINT8 *)p1, (const UINT8 *)"P1", 16);
#endif
}