
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_17__ ;
typedef struct TYPE_20__ TYPE_12__ ;
typedef struct TYPE_19__ TYPE_11__ ;
typedef struct TYPE_18__ TYPE_10__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_SP_KEYPRESS ;
struct TYPE_25__ {int upgrade; int bd_addr; } ;
struct TYPE_24__ {int bd_addr; int * bd_name; int dev_class; } ;
struct TYPE_22__ {int status; int r; int c; } ;
struct TYPE_18__ {int * bd_name; int dev_class; int bd_addr; int passkey; } ;
struct TYPE_29__ {int * bd_name; int dev_class; int bd_addr; int rmt_io_caps; int loc_io_caps; int rmt_auth_req; int loc_auth_req; int just_works; } ;
struct TYPE_27__ {int auth_req; int oob_data; int io_cap; int bd_addr; } ;
struct TYPE_26__ {int oob_data; int auth_req; int is_orig; int io_cap; int bd_addr; } ;
struct TYPE_19__ {TYPE_4__ upgrade; int key_press; TYPE_3__ rmt_oob; TYPE_1__ loc_oob; TYPE_10__ key_notif; TYPE_8__ cfm_req; TYPE_6__ io_rsp; TYPE_5__ io_req; } ;
typedef TYPE_11__ tBTM_SP_EVT_DATA ;
typedef int tBTM_SP_EVT ;
typedef void* tBTA_DM_SEC_EVT ;
struct TYPE_23__ {int * bd_name; int dev_class; int bd_addr; } ;
struct TYPE_30__ {int * bd_name; int dev_class; int bd_addr; int passkey; } ;
struct TYPE_28__ {int rmt_io_caps; int loc_io_caps; int rmt_auth_req; int loc_auth_req; int just_works; } ;
struct TYPE_20__ {int key_press; TYPE_2__ rmt_oob; TYPE_9__ key_notif; TYPE_7__ cfm_req; } ;
typedef TYPE_12__ tBTA_DM_SEC ;
typedef int UINT8 ;
struct TYPE_21__ {void* pin_evt; int (* p_sec_cback ) (void*,TYPE_12__*) ;int pin_dev_class; int pin_bd_addr; int num_val; int just_works; } ;
typedef int BOOLEAN ;
typedef int BD_NAME ;


 int APPL_TRACE_EVENT (char*,int,...) ;
 int APPL_TRACE_WARNING (char*) ;
 int BCM_STRNCPY_S (char*,int,char*,int ) ;
 int BD_NAME_LEN ;
 int BTA_COPY_DEVICE_CLASS (int ,int ) ;
 void* BTA_DM_SP_CFM_REQ_EVT ;
 void* BTA_DM_SP_KEYPRESS_EVT ;
 void* BTA_DM_SP_KEY_NOTIF_EVT ;
 void* BTA_DM_SP_KEY_REQ_EVT ;
 void* BTA_DM_SP_RMT_OOB_EVT ;
 int BTM_CMD_STARTED ;
 int BTM_NOT_AUTHORIZED ;
 int BTM_ReadRemoteDeviceName (int ,int ,int ) ;
 int BTM_SUCCESS ;
 int BT_TRANSPORT_BR_EDR ;
 int bdcpy (int ,int ) ;
 TYPE_17__ bta_dm_cb ;
 int bta_dm_co_io_req (int ,int *,int *,int *,int ) ;
 int bta_dm_co_io_rsp (int ,int ,int ,int ) ;
 int bta_dm_co_lk_upgrade (int ,int *) ;
 int bta_dm_co_loc_oob (int ,int ,int ) ;
 int bta_dm_co_rmt_oob (int ) ;
 int bta_dm_pinname_cback ;
 int memcpy (int *,int *,int) ;
 int stub1 (void*,TYPE_12__*) ;
 int stub2 (void*,TYPE_12__*) ;
 int stub3 (void*,TYPE_12__*) ;

__attribute__((used)) static UINT8 bta_dm_sp_cback (tBTM_SP_EVT event, tBTM_SP_EVT_DATA *p_data)
{
    tBTM_STATUS status = BTM_CMD_STARTED;
    tBTA_DM_SEC sec_event;
    tBTA_DM_SEC_EVT pin_evt = BTA_DM_SP_KEY_NOTIF_EVT;

    APPL_TRACE_EVENT("bta_dm_sp_cback: %d", event);
    if (!bta_dm_cb.p_sec_cback) {
        return BTM_NOT_AUTHORIZED;
    }


    switch (event) {
    case 135:


        bta_dm_co_io_req(p_data->io_req.bd_addr, &p_data->io_req.io_cap,
                         &p_data->io_req.oob_data, &p_data->io_req.auth_req, p_data->io_req.is_orig);


        status = BTM_SUCCESS;


        APPL_TRACE_EVENT("io mitm: %d oob_data:%d", p_data->io_req.auth_req, p_data->io_req.oob_data);
        break;
    case 134:

        bta_dm_co_io_rsp(p_data->io_rsp.bd_addr, p_data->io_rsp.io_cap,
                         p_data->io_rsp.oob_data, p_data->io_rsp.auth_req );

        break;

    case 137:
        pin_evt = BTA_DM_SP_CFM_REQ_EVT;
        bta_dm_cb.just_works = sec_event.cfm_req.just_works = p_data->cfm_req.just_works;
        sec_event.cfm_req.loc_auth_req = p_data->cfm_req.loc_auth_req;
        sec_event.cfm_req.rmt_auth_req = p_data->cfm_req.rmt_auth_req;
        sec_event.cfm_req.loc_io_caps = p_data->cfm_req.loc_io_caps;
        sec_event.cfm_req.rmt_io_caps = p_data->cfm_req.rmt_io_caps;





    case 131:
    case 132:

        if (137 == event) {


            if (p_data->cfm_req.bd_name[0] == 0) {
                bta_dm_cb.pin_evt = pin_evt;
                bdcpy(bta_dm_cb.pin_bd_addr, p_data->cfm_req.bd_addr);
                BTA_COPY_DEVICE_CLASS(bta_dm_cb.pin_dev_class, p_data->cfm_req.dev_class);
                if ((BTM_ReadRemoteDeviceName(p_data->cfm_req.bd_addr, bta_dm_pinname_cback,
                                              BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                    return BTM_CMD_STARTED;
                }
                APPL_TRACE_WARNING(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
            } else {


                bdcpy(sec_event.key_notif.bd_addr, p_data->cfm_req.bd_addr);
                BTA_COPY_DEVICE_CLASS(sec_event.key_notif.dev_class, p_data->cfm_req.dev_class);
                BCM_STRNCPY_S((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME),
                              (char *)p_data->cfm_req.bd_name, (BD_NAME_LEN - 1));
                sec_event.key_notif.bd_name[BD_NAME_LEN - 1] = 0;
            }
        }

        bta_dm_cb.num_val = sec_event.key_notif.passkey = p_data->key_notif.passkey;
        if (132 == event) {


            if (p_data->key_notif.bd_name[0] == 0) {
                bta_dm_cb.pin_evt = pin_evt;
                bdcpy(bta_dm_cb.pin_bd_addr, p_data->key_notif.bd_addr);
                BTA_COPY_DEVICE_CLASS(bta_dm_cb.pin_dev_class, p_data->key_notif.dev_class);
                if ((BTM_ReadRemoteDeviceName(p_data->key_notif.bd_addr, bta_dm_pinname_cback,
                                              BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                    return BTM_CMD_STARTED;
                }
                APPL_TRACE_WARNING(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
            } else {
                bdcpy(sec_event.key_notif.bd_addr, p_data->key_notif.bd_addr);
                BTA_COPY_DEVICE_CLASS(sec_event.key_notif.dev_class, p_data->key_notif.dev_class);
                BCM_STRNCPY_S((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME),
                              (char *)p_data->key_notif.bd_name, (BD_NAME_LEN - 1));
                sec_event.key_notif.bd_name[BD_NAME_LEN - 1] = 0;
            }
        }

        if (131 == event) {
            pin_evt = BTA_DM_SP_KEY_REQ_EVT;


            if (p_data->key_notif.bd_name[0] == 0) {
                bta_dm_cb.pin_evt = pin_evt;
                bdcpy(bta_dm_cb.pin_bd_addr, p_data->key_notif.bd_addr);
                BTA_COPY_DEVICE_CLASS(bta_dm_cb.pin_dev_class, p_data->key_notif.dev_class);
                if ((BTM_ReadRemoteDeviceName(p_data->key_notif.bd_addr, bta_dm_pinname_cback,
                                              BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                    return BTM_CMD_STARTED;
                }
                APPL_TRACE_WARNING(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
            } else {
                bdcpy(sec_event.key_notif.bd_addr, p_data->key_notif.bd_addr);
                BTA_COPY_DEVICE_CLASS(sec_event.key_notif.dev_class, p_data->key_notif.dev_class);
                BCM_STRNCPY_S((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME),
                              (char *)p_data->key_notif.bd_name, (BD_NAME_LEN - 1));
                sec_event.key_notif.bd_name[BD_NAME_LEN - 1] = 0;
            }
        }
        bta_dm_cb.p_sec_cback(pin_evt, &sec_event);

        break;


    case 130:
        bta_dm_co_loc_oob((BOOLEAN)(p_data->loc_oob.status == BTM_SUCCESS),
                          p_data->loc_oob.c, p_data->loc_oob.r);
        break;

    case 129:

        if (p_data->rmt_oob.bd_name[0] == 0) {
            bta_dm_cb.pin_evt = BTA_DM_SP_RMT_OOB_EVT;
            bdcpy(bta_dm_cb.pin_bd_addr, p_data->rmt_oob.bd_addr);
            BTA_COPY_DEVICE_CLASS(bta_dm_cb.pin_dev_class, p_data->rmt_oob.dev_class);
            if ((BTM_ReadRemoteDeviceName(p_data->rmt_oob.bd_addr, bta_dm_pinname_cback,
                                          BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                return BTM_CMD_STARTED;
            }
            APPL_TRACE_WARNING(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
        }

        bdcpy(sec_event.rmt_oob.bd_addr, p_data->rmt_oob.bd_addr);
        BTA_COPY_DEVICE_CLASS(sec_event.rmt_oob.dev_class, p_data->rmt_oob.dev_class);
        BCM_STRNCPY_S((char *)sec_event.rmt_oob.bd_name, sizeof(BD_NAME), (char *)p_data->rmt_oob.bd_name, (BD_NAME_LEN - 1));
        sec_event.rmt_oob.bd_name[BD_NAME_LEN - 1] = 0;

        bta_dm_cb.p_sec_cback(BTA_DM_SP_RMT_OOB_EVT, &sec_event);

        bta_dm_co_rmt_oob(p_data->rmt_oob.bd_addr);
        break;

    case 136:

        break;

    case 133:
        memcpy(&sec_event.key_press, &p_data->key_press, sizeof(tBTM_SP_KEYPRESS));
        bta_dm_cb.p_sec_cback(BTA_DM_SP_KEYPRESS_EVT, &sec_event);
        break;

    case 128:
        bta_dm_co_lk_upgrade(p_data->upgrade.bd_addr, &p_data->upgrade.upgrade );
        break;

    default:
        status = BTM_NOT_AUTHORIZED;
        break;
    }
    APPL_TRACE_EVENT("dm status: %d", status);
    return status;
}
