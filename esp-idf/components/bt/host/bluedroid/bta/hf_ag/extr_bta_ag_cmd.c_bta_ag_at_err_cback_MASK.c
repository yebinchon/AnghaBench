#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  app_id; int /*<<< orphan*/  handle; } ;
struct TYPE_10__ {scalar_t__* str; scalar_t__ num; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_AG_VAL ;
struct TYPE_11__ {int features; int /*<<< orphan*/  app_id; } ;
typedef  TYPE_3__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG ;
struct TYPE_12__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,char*,size_t) ; 
 size_t BTA_AG_AT_MAX_LEN ; 
 int /*<<< orphan*/  BTA_AG_AT_UNAT_EVT ; 
 int /*<<< orphan*/  BTA_AG_ERR_OP_NOT_SUPPORTED ; 
 int BTA_AG_FEAT_UNAT ; 
 TYPE_7__ bta_ag_cb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(tBTA_AG_SCB *p_scb, BOOLEAN unknown, char *p_arg)
{
    tBTA_AG_VAL     val;

    if(unknown && (!FUNC5(p_arg))) {
        FUNC0("Empty AT cmd string received");
        FUNC4(p_scb);
        return;
    }

    /* if unknown AT command and configured to pass these to app */
    if (unknown && (p_scb->features & BTA_AG_FEAT_UNAT)) {
        val.hdr.handle = FUNC2(p_scb);
        val.hdr.app_id = p_scb->app_id;
        val.num = 0;
        FUNC1(val.str, sizeof(val.str), p_arg, BTA_AG_AT_MAX_LEN);
        val.str[BTA_AG_AT_MAX_LEN] = 0;
        (*bta_ag_cb.p_cback)(BTA_AG_AT_UNAT_EVT, (tBTA_AG *) &val);
    } else {
        FUNC3(p_scb, BTA_AG_ERR_OP_NOT_SUPPORTED);
    }
}