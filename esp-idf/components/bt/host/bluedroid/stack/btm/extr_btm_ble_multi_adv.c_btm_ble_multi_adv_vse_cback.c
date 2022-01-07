
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_9__ {scalar_t__ connectable_mode; } ;
struct TYPE_10__ {scalar_t__ privacy_mode; TYPE_3__ inq_var; } ;
struct TYPE_12__ {TYPE_4__ ble_ctr_cb; TYPE_1__* acl_db; } ;
struct TYPE_11__ {TYPE_2__* p_adv_inst; } ;
struct TYPE_8__ {int rpa; } ;
struct TYPE_7__ {int conn_addr; } ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_BLE_CONNECTABLE ;
 scalar_t__ BTM_BLE_MULTI_ADV_DEFAULT_STD ;
 scalar_t__ BTM_BLE_MULTI_ADV_MAX ;
 scalar_t__ BTM_BleMaxMultiAdvInstanceCount () ;
 scalar_t__ BTM_PRIVACY_NONE ;
 int BTM_TRACE_EVENT (char*,...) ;
 scalar_t__ HCI_VSE_SUBCODE_BLE_MULTI_ADV_ST_CHG ;
 scalar_t__ MAX_L2CAP_LINKS ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int btm_ble_multi_adv_reenable (scalar_t__) ;
 int btm_ble_set_connectability (scalar_t__) ;
 TYPE_6__ btm_cb ;
 scalar_t__ btm_handle_to_acl_index (int ) ;
 TYPE_5__ btm_multi_adv_cb ;
 int memcpy (int ,int ,int ) ;

void btm_ble_multi_adv_vse_cback(UINT8 len, UINT8 *p)
{
    UINT8 sub_event;
    UINT8 adv_inst, idx;
    UINT16 conn_handle;


    STREAM_TO_UINT8(sub_event, p);
    len--;

    BTM_TRACE_EVENT("btm_ble_multi_adv_vse_cback called with event:%d", sub_event);
    if ((sub_event == HCI_VSE_SUBCODE_BLE_MULTI_ADV_ST_CHG) && (len >= 4)) {
        STREAM_TO_UINT8(adv_inst, p);
        ++p;
        STREAM_TO_UINT16(conn_handle, p);

        if ((idx = btm_handle_to_acl_index(conn_handle)) != MAX_L2CAP_LINKS) {







        }

        if (adv_inst < BTM_BleMaxMultiAdvInstanceCount() &&
                adv_inst != BTM_BLE_MULTI_ADV_DEFAULT_STD) {
            BTM_TRACE_EVENT("btm_ble_multi_adv_reenable called");
            btm_ble_multi_adv_reenable(adv_inst);
        }

        else if (adv_inst == BTM_BLE_MULTI_ADV_DEFAULT_STD) {
            if (btm_cb.ble_ctr_cb.inq_var.connectable_mode == BTM_BLE_CONNECTABLE) {
                btm_ble_set_connectability ( btm_cb.ble_ctr_cb.inq_var.connectable_mode );
            }
        }

    }

}
