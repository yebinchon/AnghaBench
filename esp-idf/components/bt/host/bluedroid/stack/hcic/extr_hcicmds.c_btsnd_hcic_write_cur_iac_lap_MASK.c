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
typedef  int UINT8 ;
struct TYPE_4__ {int len; scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  LAP ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  HCI_WRITE_CURRENT_IAC_LAP ; 
 int LAP_LEN ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC5 (UINT8 num_cur_iac, LAP *const iac_lap)
{
    BT_HDR *p;
    UINT8 *pp;
    int i;

    if ((p = FUNC0(1 + (LAP_LEN * num_cur_iac))) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + 1 + (LAP_LEN * num_cur_iac);
    p->offset = 0;

    FUNC2 (pp, HCI_WRITE_CURRENT_IAC_LAP);
    FUNC3  (pp, p->len - HCIC_PREAMBLE_SIZE);

    FUNC3 (pp, num_cur_iac);

    for (i = 0; i < num_cur_iac; i++) {
        FUNC1 (pp, iac_lap[i]);
    }

    FUNC4 (LOCAL_BR_EDR_CONTROLLER_ID,  p);
    return (TRUE);
}