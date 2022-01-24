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
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_RMT_NAME_REQ ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  HCI_RMT_NAME_REQUEST ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC5 (BD_ADDR bd_addr, UINT8 page_scan_rep_mode,
                                 UINT8 page_scan_mode, UINT16 clock_offset)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC1(HCIC_PARAM_SIZE_RMT_NAME_REQ)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_RMT_NAME_REQ;
    p->offset = 0;

    FUNC2 (pp, HCI_RMT_NAME_REQUEST);
    FUNC3  (pp, HCIC_PARAM_SIZE_RMT_NAME_REQ);

    FUNC0 (pp, bd_addr);
    FUNC3  (pp, page_scan_rep_mode);
    FUNC3  (pp, page_scan_mode);
    FUNC2 (pp, clock_offset);
#if (SMP_INCLUDED == TRUE && CLASSIC_BT_INCLUDED == TRUE)
    FUNC4 (p, bd_addr);
#endif  ///SMP_INCLUDED == TRUE && CLASSIC_BT_INCLUDED == TRUE
    return (TRUE);
}