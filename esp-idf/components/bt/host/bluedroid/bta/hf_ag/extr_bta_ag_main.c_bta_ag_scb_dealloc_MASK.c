#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  sco_idx; int /*<<< orphan*/  colli_timer; int /*<<< orphan*/  cn_timer; int /*<<< orphan*/  act_timer; } ;
typedef  TYPE_2__ tBTA_AG_SCB ;
typedef  size_t UINT8 ;
struct TYPE_9__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_1__* scb; } ;
struct TYPE_7__ {scalar_t__ in_use; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTA_AG_DISABLE_EVT ; 
 size_t BTA_AG_NUM_SCB ; 
 int /*<<< orphan*/  BTA_ID_AG ; 
 int /*<<< orphan*/  BTM_INVALID_SCO_INDEX ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__ bta_ag_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(tBTA_AG_SCB *p_scb)
{
    UINT8   idx;
    BOOLEAN allocated = FALSE;

    FUNC0("bta_ag_scb_dealloc %d", FUNC1(p_scb));
    /* stop timers */
    FUNC3(&p_scb->act_timer);
#if (BTM_WBS_INCLUDED == TRUE)
    FUNC3(&p_scb->cn_timer);
#endif
    FUNC3(&p_scb->colli_timer);

    /* initialize control block */
    FUNC4(p_scb, 0, sizeof(tBTA_AG_SCB));
    p_scb->sco_idx = BTM_INVALID_SCO_INDEX;
    /* If all scbs are deallocated, callback with disable event */
    if (!FUNC2 (BTA_ID_AG)) {
        for (idx = 0; idx < BTA_AG_NUM_SCB; idx++) {
            if (bta_ag_cb.scb[idx].in_use) {
                allocated = TRUE;
                break;
            }
        }
        if (!allocated) {
            (*bta_ag_cb.p_cback)(BTA_AG_DISABLE_EVT, NULL);
        }
    }
}