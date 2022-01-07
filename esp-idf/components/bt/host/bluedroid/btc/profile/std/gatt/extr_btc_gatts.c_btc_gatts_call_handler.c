
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_66__ TYPE_9__ ;
typedef struct TYPE_65__ TYPE_8__ ;
typedef struct TYPE_64__ TYPE_7__ ;
typedef struct TYPE_63__ TYPE_6__ ;
typedef struct TYPE_62__ TYPE_5__ ;
typedef struct TYPE_61__ TYPE_4__ ;
typedef struct TYPE_60__ TYPE_3__ ;
typedef struct TYPE_59__ TYPE_2__ ;
typedef struct TYPE_58__ TYPE_28__ ;
typedef struct TYPE_57__ TYPE_27__ ;
typedef struct TYPE_56__ TYPE_26__ ;
typedef struct TYPE_55__ TYPE_25__ ;
typedef struct TYPE_54__ TYPE_24__ ;
typedef struct TYPE_53__ TYPE_23__ ;
typedef struct TYPE_52__ TYPE_22__ ;
typedef struct TYPE_51__ TYPE_21__ ;
typedef struct TYPE_50__ TYPE_20__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_19__ ;
typedef struct TYPE_47__ TYPE_18__ ;
typedef struct TYPE_46__ TYPE_17__ ;
typedef struct TYPE_45__ TYPE_16__ ;
typedef struct TYPE_44__ TYPE_15__ ;
typedef struct TYPE_43__ TYPE_14__ ;
typedef struct TYPE_42__ TYPE_13__ ;
typedef struct TYPE_41__ TYPE_12__ ;
typedef struct TYPE_40__ TYPE_11__ ;
typedef struct TYPE_39__ TYPE_10__ ;


typedef int tGATT_ATTR_VAL ;
struct TYPE_49__ {int uuid16; } ;
struct TYPE_52__ {TYPE_1__ uu; int len; } ;
typedef TYPE_22__ tBT_UUID ;
typedef int tBTA_GATT_TRANSPORT ;
struct TYPE_61__ {int inst_id; int uuid; } ;
struct TYPE_53__ {int is_primary; TYPE_4__ id; } ;
typedef TYPE_23__ tBTA_GATT_SRVC_ID ;
typedef int tBTA_GATT_ATTR_VAL ;
struct TYPE_43__ {int handle; } ;
struct TYPE_54__ {TYPE_14__ attr_value; } ;
typedef TYPE_24__ tBTA_GATTS_RSP ;
typedef int tBTA_GATTS_ATTR_CONTROL ;
typedef int esp_gatt_rsp_t ;
struct TYPE_44__ {int status; int handle; } ;
struct TYPE_55__ {TYPE_15__ rsp; } ;
typedef TYPE_25__ esp_ble_gatts_cb_param_t ;
struct TYPE_56__ {int act; scalar_t__ arg; } ;
typedef TYPE_26__ btc_msg_t ;
struct TYPE_51__ {int gatts_if; int remote_bda; } ;
struct TYPE_50__ {int conn_id; } ;
struct TYPE_48__ {int is_direct; int remote_bda; int gatts_if; } ;
struct TYPE_46__ {int value; int length; int handle; } ;
struct TYPE_45__ {int conn_id; int status; int trans_id; int * rsp; } ;
struct TYPE_42__ {int need_confirm; int value; int value_len; int attr_handle; int conn_id; } ;
struct TYPE_41__ {int attr_control; int descr_val; int perm; int service_handle; int descr_uuid; } ;
struct TYPE_40__ {int attr_control; int char_val; int property; int perm; int service_handle; int char_uuid; } ;
struct TYPE_39__ {int included_service_handle; int service_handle; } ;
struct TYPE_66__ {int service_handle; } ;
struct TYPE_65__ {int service_handle; } ;
struct TYPE_64__ {int service_handle; } ;
struct TYPE_63__ {int srvc_inst_id; int max_nb_attr; int gatts_if; int gatts_attr_db; } ;
struct TYPE_62__ {int num_handle; int gatts_if; int service_id; } ;
struct TYPE_60__ {int gatts_if; } ;
struct TYPE_59__ {int app_id; } ;
struct TYPE_57__ {TYPE_21__ send_service_change; TYPE_20__ close; TYPE_19__ open; int remote_bda; TYPE_17__ set_attr_val; TYPE_16__ send_rsp; TYPE_13__ send_ind; TYPE_12__ add_descr; TYPE_11__ add_char; TYPE_10__ add_incl_srvc; TYPE_9__ stop_srvc; TYPE_8__ start_srvc; TYPE_7__ delete_srvc; TYPE_6__ create_attr_tab; TYPE_5__ create_srvc; TYPE_3__ app_unreg; TYPE_2__ app_reg; } ;
typedef TYPE_27__ btc_ble_gatts_args_t ;
struct TYPE_47__ {int address; } ;
struct TYPE_58__ {TYPE_18__ bd_addr; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTA_DmAddBleDevice (int ,int ,int ) ;
 int BTA_GATTS_AddCharDescriptor (int ,int ,TYPE_22__*,int *,int *) ;
 int BTA_GATTS_AddCharacteristic (int ,TYPE_22__*,int ,int ,int *,int *) ;
 int BTA_GATTS_AddIncludeService (int ,int ) ;
 int BTA_GATTS_AppDeregister (int ) ;
 int BTA_GATTS_AppRegister (TYPE_22__*,int ) ;
 int BTA_GATTS_Close (int ) ;
 int BTA_GATTS_CreateService (int ,int *,int ,int ,int ) ;
 int BTA_GATTS_DeleteService (int ) ;
 int BTA_GATTS_HandleValueIndication (int ,int ,int ,int ,int ) ;
 int BTA_GATTS_Open (int ,int ,int ,int ) ;
 int BTA_GATTS_SendRsp (int ,int ,int ,TYPE_24__*) ;
 int BTA_GATTS_SendServiceChangeIndication (int ,int ) ;
 int BTA_GATTS_StartService (int ,int ) ;
 int BTA_GATTS_StopService (int ) ;
 int BTA_GATT_TRANSPORT_LE ;
 int BTA_SetAttributeValue (int ,int ,int ) ;
 int BTC_GATT_GET_GATT_IF (int ) ;
 int BT_DEVICE_TYPE_BREDR ;
 int ESP_GATTS_RESPONSE_EVT ;
 int LEN_UUID_16 ;
 int _get_address_type (int ,int *) ;
 int addr_type ;
 int btc_gatts_act_create_attr_tab (int ,int ,int ,int ) ;
 int btc_gatts_arg_deep_free (TYPE_26__*) ;
 int btc_gatts_cb_to_app (int ,int ,TYPE_25__*) ;
 int btc_gatts_inter_cb ;
 int btc_to_bta_response (TYPE_24__*,int *) ;
 int btc_to_bta_srvc_id (TYPE_23__*,int *) ;
 int btc_to_bta_uuid (TYPE_22__*,int *) ;
 int btif_get_device_type (int ,int *) ;
 int device_type ;
 int memcpy (int ,int ,int ) ;
 TYPE_28__* p_cb ;

void btc_gatts_call_handler(btc_msg_t *msg)
{
    btc_ble_gatts_args_t *arg = (btc_ble_gatts_args_t *)msg->arg;

    switch (msg->act) {
    case 140: {
        tBT_UUID uuid;

        uuid.len = LEN_UUID_16;
        uuid.uu.uuid16 = arg->app_reg.app_id;

        BTA_GATTS_AppRegister(&uuid, btc_gatts_inter_cb);

        break;
    }
    case 139:
        BTA_GATTS_AppDeregister(arg->app_unreg.gatts_if);
        break;
    case 136: {
        tBTA_GATT_SRVC_ID srvc_id;
        btc_to_bta_srvc_id(&srvc_id, &arg->create_srvc.service_id);
        BTA_GATTS_CreateService(arg->create_srvc.gatts_if, &srvc_id.id.uuid,
                                srvc_id.id.inst_id, arg->create_srvc.num_handle,
                                srvc_id.is_primary);
        break;
    }
   case 137:
    btc_gatts_act_create_attr_tab(arg->create_attr_tab.gatts_attr_db,
                                         arg->create_attr_tab.gatts_if,
                                         arg->create_attr_tab.max_nb_attr,
                                         arg->create_attr_tab.srvc_inst_id);
    break;
    case 135:
        BTA_GATTS_DeleteService(arg->delete_srvc.service_handle);
        break;
    case 129:
        BTA_GATTS_StartService(arg->start_srvc.service_handle, BTA_GATT_TRANSPORT_LE);
        break;
    case 128:
        BTA_GATTS_StopService(arg->stop_srvc.service_handle);
        break;
    case 141:
        BTA_GATTS_AddIncludeService(arg->add_incl_srvc.service_handle, arg->add_incl_srvc.included_service_handle);
        break;
    case 143: {
        tBT_UUID uuid;
        btc_to_bta_uuid(&uuid, &arg->add_char.char_uuid);

        BTA_GATTS_AddCharacteristic(arg->add_char.service_handle, &uuid,
                                    arg->add_char.perm, arg->add_char.property,
                                    (tGATT_ATTR_VAL *)&arg->add_char.char_val,
                                    (tBTA_GATTS_ATTR_CONTROL *)&arg->add_char.attr_control);
        break;
    }
    case 142: {
        tBT_UUID uuid;
        btc_to_bta_uuid(&uuid, &arg->add_descr.descr_uuid);
        BTA_GATTS_AddCharDescriptor(arg->add_descr.service_handle, arg->add_descr.perm, &uuid,
                                   (tBTA_GATT_ATTR_VAL *)&arg->add_descr.descr_val,
                                   (tBTA_GATTS_ATTR_CONTROL *)&arg->add_descr.attr_control);
        break;
    }
    case 133:
        BTA_GATTS_HandleValueIndication(arg->send_ind.conn_id, arg->send_ind.attr_handle,
                                        arg->send_ind.value_len, arg->send_ind.value, arg->send_ind.need_confirm);
        break;
    case 132: {
        esp_ble_gatts_cb_param_t param;
        esp_gatt_rsp_t *p_rsp = arg->send_rsp.rsp;

        if (p_rsp) {
            tBTA_GATTS_RSP rsp_struct;
            btc_to_bta_response(&rsp_struct, p_rsp);
            BTA_GATTS_SendRsp(arg->send_rsp.conn_id, arg->send_rsp.trans_id,
                              arg->send_rsp.status, &rsp_struct);
            param.rsp.handle = rsp_struct.attr_value.handle;
        } else {
            BTA_GATTS_SendRsp(arg->send_rsp.conn_id, arg->send_rsp.trans_id,
                              arg->send_rsp.status, ((void*)0));
        }

        param.rsp.status = 0;
        btc_gatts_cb_to_app(ESP_GATTS_RESPONSE_EVT, BTC_GATT_GET_GATT_IF(arg->send_rsp.conn_id), &param);
        break;
    }
    case 130:
        BTA_SetAttributeValue(arg->set_attr_val.handle, arg->set_attr_val.length,
                              arg->set_attr_val.value);
    break;
    case 134: {

        tBTA_GATT_TRANSPORT transport = BTA_GATT_TRANSPORT_LE;
        transport = BTA_GATT_TRANSPORT_LE;


        BTA_GATTS_Open(arg->open.gatts_if, arg->open.remote_bda,
                       arg->open.is_direct, transport);
        break;
    }
    case 138:






        if (arg->close.conn_id != 0) {
            BTA_GATTS_Close(arg->close.conn_id);
        }

        break;
    case 131: {
        BD_ADDR remote_bda;
        memcpy(remote_bda, arg->send_service_change.remote_bda, BD_ADDR_LEN);
        BTA_GATTS_SendServiceChangeIndication(arg->send_service_change.gatts_if, remote_bda);
        break;
    }
    default:
        break;
    }
    btc_gatts_arg_deep_free(msg);
}
