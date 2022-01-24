#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_27__ {int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  smp_over_br; int /*<<< orphan*/  reason; } ;
struct TYPE_25__ {int /*<<< orphan*/  p_key_value; int /*<<< orphan*/  key_type; } ;
struct TYPE_21__ {int /*<<< orphan*/  oob_data; int /*<<< orphan*/  auth_req; int /*<<< orphan*/  resp_keys; int /*<<< orphan*/  init_keys; int /*<<< orphan*/  max_key_size; int /*<<< orphan*/  io_cap; } ;
struct TYPE_28__ {TYPE_7__ complt; TYPE_5__ key; int /*<<< orphan*/  key_notif; TYPE_1__ io_req; } ;
typedef  TYPE_8__ tBTM_LE_EVT_DATA ;
typedef  int tBTM_LE_EVT ;
struct TYPE_26__ {int /*<<< orphan*/  auth_mode; int /*<<< orphan*/  success; int /*<<< orphan*/  fail_reason; int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  addr_type; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_24__ {int /*<<< orphan*/  p_key_value; int /*<<< orphan*/  key_type; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_23__ {int /*<<< orphan*/  passkey; int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_22__ {int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_29__ {TYPE_6__ auth_cmpl; TYPE_4__ ble_key; TYPE_3__ key_notif; TYPE_2__ ble_req; } ;
typedef  TYPE_9__ tBTA_DM_SEC ;
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_20__ {int /*<<< orphan*/  (* p_sec_cback ) (int /*<<< orphan*/ ,TYPE_9__*) ;} ;
typedef  int /*<<< orphan*/  BD_NAME ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,size_t) ; 
 size_t BD_NAME_LEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTA_DM_BLE_AUTH_CMPL_EVT ; 
 int /*<<< orphan*/  BTA_DM_BLE_KEY_EVT ; 
 int /*<<< orphan*/  BTA_DM_BLE_NC_REQ_EVT ; 
 int /*<<< orphan*/  BTA_DM_BLE_OOB_REQ_EVT ; 
 int /*<<< orphan*/  BTA_DM_BLE_PASSKEY_NOTIF_EVT ; 
 int /*<<< orphan*/  BTA_DM_BLE_PASSKEY_REQ_EVT ; 
 int /*<<< orphan*/  BTA_DM_BLE_SEC_REQ_EVT ; 
#define  BTM_LE_COMPLT_EVT 135 
#define  BTM_LE_IO_REQ_EVT 134 
#define  BTM_LE_KEY_EVT 133 
#define  BTM_LE_KEY_NOTIF_EVT 132 
#define  BTM_LE_KEY_REQ_EVT 131 
#define  BTM_LE_NC_REQ_EVT 130 
#define  BTM_LE_OOB_REQ_EVT 129 
#define  BTM_LE_SEC_REQUEST_EVT 128 
 int /*<<< orphan*/  BTM_NOT_AUTHORIZED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  BTM_SUCCESS ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_18__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_9__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_9__*) ; 

__attribute__((used)) static UINT8 FUNC17 (tBTM_LE_EVT event, BD_ADDR bda, tBTM_LE_EVT_DATA *p_data)
{
    tBTM_STATUS status = BTM_SUCCESS;
    tBTA_DM_SEC sec_event;
    char *p_name = NULL;

    if (!bta_dm_cb.p_sec_cback) {
        return BTM_NOT_AUTHORIZED;
    }

    FUNC9(&sec_event, 0, sizeof(tBTA_DM_SEC));
    switch (event) {
    case BTM_LE_IO_REQ_EVT: {
        // #if (BT_SSP_INCLUDED == TRUE)
        FUNC6(bda,
                             &p_data->io_req.io_cap,
                             &p_data->io_req.oob_data,
                             &p_data->io_req.auth_req,
                             &p_data->io_req.max_key_size,
                             &p_data->io_req.init_keys,
                             &p_data->io_req.resp_keys);
        // #endif
#if BTM_OOB_INCLUDED == FALSE
        status = BTM_SUCCESS;
#endif
        FUNC0("io mitm: %d oob_data:%d\n", p_data->io_req.auth_req, p_data->io_req.oob_data);

        break;
    }

    case BTM_LE_SEC_REQUEST_EVT:
        FUNC5(sec_event.ble_req.bd_addr, bda);
        p_name = FUNC4(bda);
        if (p_name != NULL) {
            FUNC1((char *)sec_event.ble_req.bd_name,
                          sizeof(BD_NAME), p_name, (BD_NAME_LEN));
        } else {
            sec_event.ble_req.bd_name[0] = 0;
        }
        sec_event.ble_req.bd_name[BD_NAME_LEN] = 0;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_SEC_REQ_EVT, &sec_event);
        break;

    case BTM_LE_KEY_NOTIF_EVT:
        FUNC5(sec_event.key_notif.bd_addr, bda);
        p_name = FUNC4(bda);
        if (p_name != NULL) {
            FUNC1((char *)sec_event.key_notif.bd_name,
                          sizeof(BD_NAME), p_name, (BD_NAME_LEN));
        } else {
            sec_event.key_notif.bd_name[0] = 0;
        }
        sec_event.ble_req.bd_name[BD_NAME_LEN] = 0;
        sec_event.key_notif.passkey = p_data->key_notif;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_PASSKEY_NOTIF_EVT, &sec_event);
        break;

    case BTM_LE_KEY_REQ_EVT:
        FUNC5(sec_event.ble_req.bd_addr, bda);
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_PASSKEY_REQ_EVT, &sec_event);
        break;

    case BTM_LE_OOB_REQ_EVT:
        FUNC5(sec_event.ble_req.bd_addr, bda);
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_OOB_REQ_EVT, &sec_event);
        break;

    case BTM_LE_NC_REQ_EVT:
        FUNC5(sec_event.key_notif.bd_addr, bda);
        FUNC1((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME), FUNC7(), (BD_NAME_LEN));
        sec_event.ble_req.bd_name[BD_NAME_LEN] = 0;
        sec_event.key_notif.passkey = p_data->key_notif;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_NC_REQ_EVT, &sec_event);
        break;

    case BTM_LE_KEY_EVT:
        FUNC5(sec_event.ble_key.bd_addr, bda);
        sec_event.ble_key.key_type = p_data->key.key_type;
        sec_event.ble_key.p_key_value = p_data->key.p_key_value;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_KEY_EVT, &sec_event);
        break;

    case BTM_LE_COMPLT_EVT:
        FUNC5(sec_event.auth_cmpl.bd_addr, bda);
#if BLE_INCLUDED == TRUE
        FUNC3(bda, &sec_event.auth_cmpl.dev_type, &sec_event.auth_cmpl.addr_type);
#endif
        p_name = FUNC4(bda);
        if (p_name != NULL) {
            FUNC1((char *)sec_event.auth_cmpl.bd_name,
                          sizeof(BD_NAME), p_name, (BD_NAME_LEN));
        } else {
            sec_event.auth_cmpl.bd_name[0] = 0;
        }
        if (p_data->complt.reason != 0) {
            sec_event.auth_cmpl.fail_reason = FUNC2(((UINT8)p_data->complt.reason));
            /* delete this device entry from Sec Dev DB */
            FUNC8 (bda);
        } else {
            sec_event.auth_cmpl.success = TRUE;
            if (!p_data->complt.smp_over_br) {

            }
        }
        sec_event.auth_cmpl.auth_mode = p_data->complt.auth_mode;
        if (bta_dm_cb.p_sec_cback) {
            //bta_dm_cb.p_sec_cback(BTA_DM_AUTH_CMPL_EVT, &sec_event);
            bta_dm_cb.p_sec_cback(BTA_DM_BLE_AUTH_CMPL_EVT, &sec_event);
        }

        break;

    default:
        status = BTM_NOT_AUTHORIZED;
        break;
    }
    return status;
}