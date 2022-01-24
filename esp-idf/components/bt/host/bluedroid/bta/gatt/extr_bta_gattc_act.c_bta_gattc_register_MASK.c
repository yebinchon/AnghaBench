#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBT_UUID ;
typedef  void* tBTA_GATT_STATUS ;
typedef  int /*<<< orphan*/  tBTA_GATTC_RCB ;
struct TYPE_14__ {int /*<<< orphan*/  event; } ;
struct TYPE_17__ {int /*<<< orphan*/  client_if; TYPE_1__ hdr; } ;
typedef  TYPE_4__ tBTA_GATTC_INT_START_IF ;
struct TYPE_16__ {int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_7__*) ;int /*<<< orphan*/  app_uuid; } ;
struct TYPE_18__ {TYPE_3__ api_reg; } ;
typedef  TYPE_5__ tBTA_GATTC_DATA ;
struct TYPE_19__ {scalar_t__ state; TYPE_7__* cl_rcb; } ;
typedef  TYPE_6__ tBTA_GATTC_CB ;
struct TYPE_15__ {void* status; int /*<<< orphan*/  app_uuid; int /*<<< orphan*/  client_if; } ;
struct TYPE_20__ {TYPE_2__ reg_oper; int /*<<< orphan*/  client_if; int /*<<< orphan*/  app_uuid; int /*<<< orphan*/  (* p_cback ) (int /*<<< orphan*/ ,TYPE_7__*) ;scalar_t__ in_use; } ;
typedef  TYPE_7__ tBTA_GATTC ;
typedef  int /*<<< orphan*/  cb_data ;
typedef  size_t UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 size_t BTA_GATTC_CL_MAX ; 
 int /*<<< orphan*/  BTA_GATTC_INT_START_IF_EVT ; 
 int /*<<< orphan*/  BTA_GATTC_REG_EVT ; 
 scalar_t__ BTA_GATTC_STATE_DISABLED ; 
 void* BTA_GATT_ERROR ; 
 void* BTA_GATT_NO_RESOURCES ; 
 void* BTA_GATT_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  bta_gattc_cl_cback ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_7__*) ; 

void FUNC10(tBTA_GATTC_CB *p_cb, tBTA_GATTC_DATA *p_data)
{
    tBTA_GATTC               cb_data;
    UINT8                    i;
    tBT_UUID                 *p_app_uuid = &p_data->api_reg.app_uuid;
    tBTA_GATTC_INT_START_IF  *p_buf;
    tBTA_GATT_STATUS         status = BTA_GATT_NO_RESOURCES;


    FUNC0("bta_gattc_register state %d\n", p_cb->state);
    FUNC7(&cb_data, 0, sizeof(cb_data));
    cb_data.reg_oper.status = BTA_GATT_NO_RESOURCES;

    /* check if  GATTC module is already enabled . Else enable */
    if (p_cb->state == BTA_GATTC_STATE_DISABLED) {
        FUNC4 (p_cb);
    }
    /* todo need to check duplicate uuid */
    for (i = 0; i < BTA_GATTC_CL_MAX; i ++) {
        if (!p_cb->cl_rcb[i].in_use) {
            if ((p_app_uuid == NULL) || (p_cb->cl_rcb[i].client_if = FUNC3(p_app_uuid, &bta_gattc_cl_cback)) == 0) {
                FUNC1("Register with GATT stack failed.\n");
                status = BTA_GATT_ERROR;
            } else {
                p_cb->cl_rcb[i].in_use = TRUE;
                p_cb->cl_rcb[i].p_cback = p_data->api_reg.p_cback;
                FUNC6(&p_cb->cl_rcb[i].app_uuid, p_app_uuid, sizeof(tBT_UUID));

                /* BTA use the same client interface as BTE GATT statck */
                cb_data.reg_oper.client_if = p_cb->cl_rcb[i].client_if;

                if ((p_buf = (tBTA_GATTC_INT_START_IF *) FUNC8(sizeof(tBTA_GATTC_INT_START_IF))) != NULL) {
                    p_buf->hdr.event    = BTA_GATTC_INT_START_IF_EVT;
                    p_buf->client_if    = p_cb->cl_rcb[i].client_if;
                    FUNC0("GATTC getbuf sucess.\n");
                    FUNC5(p_buf);
                    status = BTA_GATT_OK;
                } else {
                    FUNC2(p_cb->cl_rcb[i].client_if);

                    status = BTA_GATT_NO_RESOURCES;
                    FUNC7( &p_cb->cl_rcb[i], 0 , sizeof(tBTA_GATTC_RCB));
                }
                break;
            }
        }
    }

    /* callback with register event */
    if (p_data->api_reg.p_cback) {
        if (p_app_uuid != NULL) {
            FUNC6(&(cb_data.reg_oper.app_uuid), p_app_uuid, sizeof(tBT_UUID));
        }
        cb_data.reg_oper.status = status;
        (*p_data->api_reg.p_cback)(BTA_GATTC_REG_EVT,  (tBTA_GATTC *)&cb_data);
    }
}