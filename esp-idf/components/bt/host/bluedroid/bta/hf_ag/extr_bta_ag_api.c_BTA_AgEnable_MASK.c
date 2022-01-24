#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTA_STATUS ;
typedef  int /*<<< orphan*/  tBTA_AG_PARSE_MODE ;
typedef  int /*<<< orphan*/  tBTA_AG_CBACK ;
struct TYPE_6__ {int /*<<< orphan*/  event; } ;
struct TYPE_8__ {int /*<<< orphan*/ * p_cback; int /*<<< orphan*/  parse_mode; TYPE_1__ hdr; } ;
typedef  TYPE_3__ tBTA_AG_API_ENABLE ;
typedef  size_t UINT8 ;
struct TYPE_9__ {TYPE_2__* scb; } ;
struct TYPE_7__ {scalar_t__ in_use; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_AG_API_ENABLE_EVT ; 
 size_t BTA_AG_NUM_SCB ; 
 int /*<<< orphan*/  BTA_FAILURE ; 
 int /*<<< orphan*/  BTA_ID_AG ; 
 int /*<<< orphan*/  BTA_SUCCESS ; 
 TYPE_5__ bta_ag_cb ; 
 int /*<<< orphan*/  bta_ag_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int) ; 

tBTA_STATUS FUNC4(tBTA_AG_PARSE_MODE parse_mode, tBTA_AG_CBACK *p_cback)
{
    tBTA_AG_API_ENABLE  *p_buf;
    UINT8       idx;

    /* Error if AG is already enabled, or AG is in the middle of disabling. */
    for (idx = 0; idx < BTA_AG_NUM_SCB; idx++) {
        if (bta_ag_cb.scb[idx].in_use) {
            FUNC0 ("BTA_AgEnable: FAILED, AG already enabled.");
            return BTA_FAILURE;
        }
    }
    /* register with BTA system manager */
    FUNC1(BTA_ID_AG, &bta_ag_reg);

    if ((p_buf = (tBTA_AG_API_ENABLE *) FUNC3(sizeof(tBTA_AG_API_ENABLE))) != NULL) {
        p_buf->hdr.event = BTA_AG_API_ENABLE_EVT;
        p_buf->parse_mode = parse_mode;
        p_buf->p_cback = p_cback;
        FUNC2(p_buf);
    }
    return BTA_SUCCESS;
}