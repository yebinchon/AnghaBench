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
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {int len; scalar_t__ offset; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  HCI_HOST_NUM_PACKETS_DONE ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC4 (UINT8 num_handles, UINT16 *handle,
        UINT16 *num_pkts)
{
    BT_HDR *p;
    UINT8 *pp;
    int j;

    if ((p = FUNC0(1 + (num_handles * 4))) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + 1 + (num_handles * 4);
    p->offset = 0;

    FUNC1 (pp, HCI_HOST_NUM_PACKETS_DONE);
    FUNC2  (pp, p->len - HCIC_PREAMBLE_SIZE);

    FUNC2 (pp, num_handles);

    for (j = 0; j < num_handles; j++) {
        FUNC1 (pp, handle[j]);
        FUNC1 (pp, num_pkts[j]);
    }

    FUNC3 (LOCAL_BR_EDR_CONTROLLER_ID,  p);
    return (TRUE);
}