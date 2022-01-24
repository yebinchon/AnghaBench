#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  app_id; int /*<<< orphan*/  reg_services; int /*<<< orphan*/  features; int /*<<< orphan*/  serv_sec_mask; } ;
typedef  TYPE_3__ tBTA_AG_SCB ;
struct TYPE_15__ {int /*<<< orphan*/  app_id; int /*<<< orphan*/  handle; } ;
struct TYPE_17__ {int /*<<< orphan*/  status; TYPE_2__ hdr; } ;
typedef  TYPE_4__ tBTA_AG_REGISTER ;
struct TYPE_14__ {int /*<<< orphan*/  app_id; int /*<<< orphan*/  features; int /*<<< orphan*/  sec_mask; int /*<<< orphan*/  services; } ;
struct TYPE_18__ {TYPE_1__ api_register; } ;
typedef  TYPE_5__ tBTA_AG_DATA ;
typedef  int /*<<< orphan*/  tBTA_AG ;
struct TYPE_13__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_REGISTER_EVT ; 
 int /*<<< orphan*/  BTA_AG_SUCCESS ; 
 TYPE_12__ bta_ag_cb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    tBTA_AG_REGISTER reg;
    /* initialize control block */
    p_scb->reg_services = p_data->api_register.services;
    p_scb->serv_sec_mask = p_data->api_register.sec_mask;
    p_scb->features = p_data->api_register.features;
    p_scb->app_id = p_data->api_register.app_id;
    /* create SDP records */
    FUNC0(p_scb, p_data);
    /* start RFCOMM servers */
    FUNC2(p_scb, p_scb->reg_services);
    /* call app callback with register event */
    reg.hdr.handle = FUNC1(p_scb);
    reg.hdr.app_id = p_scb->app_id;
    reg.status = BTA_AG_SUCCESS;
    (*bta_ag_cb.p_cback)(BTA_AG_REGISTER_EVT, (tBTA_AG *) &reg);
}