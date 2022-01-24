#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_CREATE_CONN_CANCEL ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  HCI_CREATE_CONNECTION_CANCEL ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC5(BD_ADDR dest)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC1(HCIC_PARAM_SIZE_CREATE_CONN_CANCEL)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_CREATE_CONN_CANCEL;
    p->offset = 0;

    FUNC2 (pp, HCI_CREATE_CONNECTION_CANCEL);
    FUNC3  (pp, HCIC_PARAM_SIZE_CREATE_CONN_CANCEL);

    FUNC0 (pp, dest);

    FUNC4 (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}