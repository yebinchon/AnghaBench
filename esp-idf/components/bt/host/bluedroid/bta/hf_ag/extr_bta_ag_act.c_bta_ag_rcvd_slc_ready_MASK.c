#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;
struct TYPE_2__ {scalar_t__ parse_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ BTA_AG_PASS_THROUGH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ bta_ag_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    FUNC1(p_data);
    FUNC0("bta_ag_rcvd_slc_ready: handle = %d", FUNC2(p_scb));

    if (bta_ag_cb.parse_mode == BTA_AG_PASS_THROUGH) {
        /* In pass-through mode, BTA knows that SLC is ready only through call-in. */
        FUNC3(p_scb, NULL);
    }
}