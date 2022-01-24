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
typedef  scalar_t__ UINT16 ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ len; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  scalar_t__ BD_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCIC_PARAM_SIZE_CHANGE_NAME ; 
 scalar_t__ HCIC_PREAMBLE_SIZE ; 
 int /*<<< orphan*/  HCI_CHANGE_LOCAL_NAME ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LOCAL_BR_EDR_CONTROLLER_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 

BOOLEAN FUNC7 (BD_NAME name)
{
    BT_HDR *p;
    UINT8 *pp;
    UINT16 len = FUNC6 ((char *)name) + 1;

    if ((p = FUNC1(HCIC_PARAM_SIZE_CHANGE_NAME)) == NULL) {
        return (FALSE);
    }

    pp = (UINT8 *)(p + 1);
    FUNC5(pp, 0, HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_CHANGE_NAME);

    p->len    = HCIC_PREAMBLE_SIZE + HCIC_PARAM_SIZE_CHANGE_NAME;
    p->offset = 0;

    FUNC2 (pp, HCI_CHANGE_LOCAL_NAME);
    FUNC3  (pp, HCIC_PARAM_SIZE_CHANGE_NAME);

    if (len > HCIC_PARAM_SIZE_CHANGE_NAME) {
        len = HCIC_PARAM_SIZE_CHANGE_NAME;
    }

    FUNC0 (pp, name, len);

    FUNC4 (LOCAL_BR_EDR_CONTROLLER_ID,  p);
    return (TRUE);
}