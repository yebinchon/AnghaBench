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
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef  int /*<<< orphan*/  LAP ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_INQUIRY ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HCI_INQUIRY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

BOOLEAN FUNC5(const LAP inq_lap, UINT8 duration, UINT8 response_cnt)
{
    BT_HDR *p;
    UINT8 *pp;

    if ((p = FUNC0(HCIC_PARAM_SIZE_INQUIRY)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_INQUIRY;
    p->offset = 0;

    FUNC2 (pp, HCI_INQUIRY);
    FUNC3  (pp, HCIC_PARAM_SIZE_INQUIRY);

    FUNC1   (pp, inq_lap);
    FUNC3 (pp, duration);
    FUNC3 (pp, response_cnt);

    FUNC4 (LOCAL_BR_EDR_CONTROLLER_ID, p);
    return (TRUE);
}