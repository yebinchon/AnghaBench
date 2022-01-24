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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_REM_OOB_REPLY ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  HCI_REM_OOB_DATA_REQ_REPLY ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC6 (BD_ADDR bd_addr, UINT8 *p_c, UINT8 *p_r)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC2(HCIC_PARAM_SIZE_REM_OOB_REPLY)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_REM_OOB_REPLY;
    p->offset = 0;

    FUNC3 (pp, HCI_REM_OOB_DATA_REQ_REPLY);
    FUNC4  (pp, HCIC_PARAM_SIZE_REM_OOB_REPLY);

    FUNC1 (pp, bd_addr);
    FUNC0 (pp, p_c);
    FUNC0 (pp, p_r);

    FUNC5 (LOCAL_BR_EDR_CONTROLLER_ID,  p);
    return (TRUE);
}