#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  service; } ;
typedef  TYPE_3__ tBTA_UTL_COD ;
struct TYPE_16__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_4__ tBTA_HF_CLIENT_REGISTER ;
struct TYPE_14__ {int /*<<< orphan*/  features; int /*<<< orphan*/  sec_mask; } ;
struct TYPE_17__ {TYPE_2__ api_register; } ;
typedef  TYPE_5__ tBTA_HF_CLIENT_DATA ;
typedef  int /*<<< orphan*/  evt ;
struct TYPE_13__ {int /*<<< orphan*/  features; int /*<<< orphan*/  serv_sec_mask; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_4__*) ;TYPE_1__ scb; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_HF_CLIENT_REGISTER_EVT ; 
 int /*<<< orphan*/  BTA_HF_CLIENT_SUCCESS ; 
 int /*<<< orphan*/  BTA_UTL_SET_COD_ALL ; 
 int /*<<< orphan*/  BTM_COD_MAJOR_AUDIO ; 
 int /*<<< orphan*/  BTM_COD_MINOR_CONFM_HANDSFREE ; 
 int /*<<< orphan*/  BTM_COD_SERVICE_AUDIO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_11__ bta_hf_client_cb ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC7(tBTA_HF_CLIENT_DATA *p_data)
{
    tBTA_HF_CLIENT_REGISTER evt;
    tBTA_UTL_COD   cod;

    FUNC4(&evt, 0, sizeof(evt));

    /* initialize control block */
    FUNC2();

    bta_hf_client_cb.scb.serv_sec_mask = p_data->api_register.sec_mask;
    bta_hf_client_cb.scb.features = p_data->api_register.features;

    /* initialize AT control block */
    FUNC0();

    /* create SDP records */
    FUNC1(p_data);

    /* Set the Class of Device (Audio service class bit) */
    cod.service = BTM_COD_SERVICE_AUDIO;
    cod.major = BTM_COD_MAJOR_AUDIO;
    cod.minor = BTM_COD_MINOR_CONFM_HANDSFREE;
    FUNC6(&cod, BTA_UTL_SET_COD_ALL);

    /* start RFCOMM server */
    FUNC3();

    /* call app callback with register event */
    evt.status = BTA_HF_CLIENT_SUCCESS;
    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_REGISTER_EVT, &evt);
}