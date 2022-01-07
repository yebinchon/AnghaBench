
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


typedef int tBTM_STATUS ;
struct TYPE_27__ {int auth_mode; int smp_over_br; int reason; } ;
struct TYPE_25__ {int p_key_value; int key_type; } ;
struct TYPE_21__ {int oob_data; int auth_req; int resp_keys; int init_keys; int max_key_size; int io_cap; } ;
struct TYPE_28__ {TYPE_7__ complt; TYPE_5__ key; int key_notif; TYPE_1__ io_req; } ;
typedef TYPE_8__ tBTM_LE_EVT_DATA ;
typedef int tBTM_LE_EVT ;
struct TYPE_26__ {int auth_mode; int success; int fail_reason; int * bd_name; int addr_type; int dev_type; int bd_addr; } ;
struct TYPE_24__ {int p_key_value; int key_type; int bd_addr; } ;
struct TYPE_23__ {int passkey; int * bd_name; int bd_addr; } ;
struct TYPE_22__ {int * bd_name; int bd_addr; } ;
struct TYPE_29__ {TYPE_6__ auth_cmpl; TYPE_4__ ble_key; TYPE_3__ key_notif; TYPE_2__ ble_req; } ;
typedef TYPE_9__ tBTA_DM_SEC ;
typedef int UINT8 ;
struct TYPE_20__ {int (* p_sec_cback ) (int ,TYPE_9__*) ;} ;
typedef int BD_NAME ;
typedef int BD_ADDR ;


 int APPL_TRACE_EVENT (char*,int ,int ) ;
 int BCM_STRNCPY_S (char*,int,char*,size_t) ;
 size_t BD_NAME_LEN ;
 int BTA_DM_AUTH_CONVERT_SMP_CODE (int ) ;
 int BTA_DM_BLE_AUTH_CMPL_EVT ;
 int BTA_DM_BLE_KEY_EVT ;
 int BTA_DM_BLE_NC_REQ_EVT ;
 int BTA_DM_BLE_OOB_REQ_EVT ;
 int BTA_DM_BLE_PASSKEY_NOTIF_EVT ;
 int BTA_DM_BLE_PASSKEY_REQ_EVT ;
 int BTA_DM_BLE_SEC_REQ_EVT ;
 int BTM_NOT_AUTHORIZED ;
 int BTM_ReadDevInfo (int ,int *,int *) ;
 int BTM_SUCCESS ;
 char* BTM_SecReadDevName (int ) ;
 int TRUE ;
 int bdcpy (int ,int ) ;
 TYPE_18__ bta_dm_cb ;
 int bta_dm_co_ble_io_req (int ,int *,int *,int *,int *,int *,int *) ;
 char* bta_dm_get_remname () ;
 int bta_dm_remove_sec_dev_entry (int ) ;
 int memset (TYPE_9__*,int ,int) ;
 int stub1 (int ,TYPE_9__*) ;
 int stub2 (int ,TYPE_9__*) ;
 int stub3 (int ,TYPE_9__*) ;
 int stub4 (int ,TYPE_9__*) ;
 int stub5 (int ,TYPE_9__*) ;
 int stub6 (int ,TYPE_9__*) ;
 int stub7 (int ,TYPE_9__*) ;

__attribute__((used)) static UINT8 bta_dm_ble_smp_cback (tBTM_LE_EVT event, BD_ADDR bda, tBTM_LE_EVT_DATA *p_data)
{
    tBTM_STATUS status = BTM_SUCCESS;
    tBTA_DM_SEC sec_event;
    char *p_name = ((void*)0);

    if (!bta_dm_cb.p_sec_cback) {
        return BTM_NOT_AUTHORIZED;
    }

    memset(&sec_event, 0, sizeof(tBTA_DM_SEC));
    switch (event) {
    case 134: {

        bta_dm_co_ble_io_req(bda,
                             &p_data->io_req.io_cap,
                             &p_data->io_req.oob_data,
                             &p_data->io_req.auth_req,
                             &p_data->io_req.max_key_size,
                             &p_data->io_req.init_keys,
                             &p_data->io_req.resp_keys);


        status = BTM_SUCCESS;

        APPL_TRACE_EVENT("io mitm: %d oob_data:%d\n", p_data->io_req.auth_req, p_data->io_req.oob_data);

        break;
    }

    case 128:
        bdcpy(sec_event.ble_req.bd_addr, bda);
        p_name = BTM_SecReadDevName(bda);
        if (p_name != ((void*)0)) {
            BCM_STRNCPY_S((char *)sec_event.ble_req.bd_name,
                          sizeof(BD_NAME), p_name, (BD_NAME_LEN));
        } else {
            sec_event.ble_req.bd_name[0] = 0;
        }
        sec_event.ble_req.bd_name[BD_NAME_LEN] = 0;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_SEC_REQ_EVT, &sec_event);
        break;

    case 132:
        bdcpy(sec_event.key_notif.bd_addr, bda);
        p_name = BTM_SecReadDevName(bda);
        if (p_name != ((void*)0)) {
            BCM_STRNCPY_S((char *)sec_event.key_notif.bd_name,
                          sizeof(BD_NAME), p_name, (BD_NAME_LEN));
        } else {
            sec_event.key_notif.bd_name[0] = 0;
        }
        sec_event.ble_req.bd_name[BD_NAME_LEN] = 0;
        sec_event.key_notif.passkey = p_data->key_notif;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_PASSKEY_NOTIF_EVT, &sec_event);
        break;

    case 131:
        bdcpy(sec_event.ble_req.bd_addr, bda);
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_PASSKEY_REQ_EVT, &sec_event);
        break;

    case 129:
        bdcpy(sec_event.ble_req.bd_addr, bda);
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_OOB_REQ_EVT, &sec_event);
        break;

    case 130:
        bdcpy(sec_event.key_notif.bd_addr, bda);
        BCM_STRNCPY_S((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME), bta_dm_get_remname(), (BD_NAME_LEN));
        sec_event.ble_req.bd_name[BD_NAME_LEN] = 0;
        sec_event.key_notif.passkey = p_data->key_notif;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_NC_REQ_EVT, &sec_event);
        break;

    case 133:
        bdcpy(sec_event.ble_key.bd_addr, bda);
        sec_event.ble_key.key_type = p_data->key.key_type;
        sec_event.ble_key.p_key_value = p_data->key.p_key_value;
        bta_dm_cb.p_sec_cback(BTA_DM_BLE_KEY_EVT, &sec_event);
        break;

    case 135:
        bdcpy(sec_event.auth_cmpl.bd_addr, bda);

        BTM_ReadDevInfo(bda, &sec_event.auth_cmpl.dev_type, &sec_event.auth_cmpl.addr_type);

        p_name = BTM_SecReadDevName(bda);
        if (p_name != ((void*)0)) {
            BCM_STRNCPY_S((char *)sec_event.auth_cmpl.bd_name,
                          sizeof(BD_NAME), p_name, (BD_NAME_LEN));
        } else {
            sec_event.auth_cmpl.bd_name[0] = 0;
        }
        if (p_data->complt.reason != 0) {
            sec_event.auth_cmpl.fail_reason = BTA_DM_AUTH_CONVERT_SMP_CODE(((UINT8)p_data->complt.reason));

            bta_dm_remove_sec_dev_entry (bda);
        } else {
            sec_event.auth_cmpl.success = TRUE;
            if (!p_data->complt.smp_over_br) {

            }
        }
        sec_event.auth_cmpl.auth_mode = p_data->complt.auth_mode;
        if (bta_dm_cb.p_sec_cback) {

            bta_dm_cb.p_sec_cback(BTA_DM_BLE_AUTH_CMPL_EVT, &sec_event);
        }

        break;

    default:
        status = BTM_NOT_AUTHORIZED;
        break;
    }
    return status;
}
