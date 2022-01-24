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
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_WRITE_LINK_SUPER_TOUT ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HCI_WRITE_LINK_SUPER_TOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC4 (UINT8 local_controller_id, UINT16 handle, UINT16 timeout)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC0(HCIC_PARAM_SIZE_WRITE_LINK_SUPER_TOUT)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_WRITE_LINK_SUPER_TOUT;
    p->offset = 0;

    FUNC1 (pp, HCI_WRITE_LINK_SUPER_TOUT);
    FUNC2  (pp, HCIC_PARAM_SIZE_WRITE_LINK_SUPER_TOUT);

    FUNC1 (pp, handle);
    FUNC1 (pp, timeout);

    FUNC3 (local_controller_id,  p);
    return (TRUE);
}