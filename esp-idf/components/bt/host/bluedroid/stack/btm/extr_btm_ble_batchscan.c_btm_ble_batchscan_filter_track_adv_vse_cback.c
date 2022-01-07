
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ version_supported; } ;
typedef TYPE_2__ tBTM_BLE_VSC_CB ;
struct TYPE_9__ {int address; } ;
struct TYPE_11__ {scalar_t__ filt_index; scalar_t__ advertiser_state; scalar_t__ advertiser_info_present; scalar_t__ addr_type; scalar_t__ tx_power; scalar_t__ rssi_value; scalar_t__ adv_pkt_len; scalar_t__ scan_rsp_len; TYPE_1__ bd_addr; void* p_scan_rsp_data; void* p_adv_pkt_data; int time_stamp; scalar_t__ client_if; } ;
typedef TYPE_3__ tBTM_BLE_TRACK_ADV_DATA ;
typedef scalar_t__ UINT8 ;
struct TYPE_13__ {int (* p_track_cback ) (TYPE_3__*) ;scalar_t__ ref_value; } ;
struct TYPE_12__ {int ref_value; int (* p_thres_cback ) (int ) ;} ;


 scalar_t__ ADV_INFO_PRESENT ;
 int BTM_BleGetVendorCapabilities (TYPE_2__*) ;
 int BTM_TRACE_EVENT (char*,scalar_t__,...) ;
 scalar_t__ BTM_VSC_CHIP_CAPABILITY_L_VERSION ;
 scalar_t__ HCI_VSE_SUBCODE_BLE_THRESHOLD_SUB_EVT ;
 scalar_t__ HCI_VSE_SUBCODE_BLE_TRACKING_SUB_EVT ;
 int STREAM_TO_BDADDR (int ,scalar_t__*) ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 TYPE_7__ ble_advtrack_cb ;
 TYPE_6__ ble_batchscan_cb ;
 int memcpy (void*,scalar_t__*,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 void* osi_malloc (scalar_t__) ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*) ;

void btm_ble_batchscan_filter_track_adv_vse_cback(UINT8 len, UINT8 *p)
{
    tBTM_BLE_TRACK_ADV_DATA adv_data;

    UINT8 sub_event = 0;
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    STREAM_TO_UINT8(sub_event, p);

    BTM_TRACE_EVENT("btm_ble_batchscan_filter_track_adv_vse_cback called with event:%x", sub_event);
    if (HCI_VSE_SUBCODE_BLE_THRESHOLD_SUB_EVT == sub_event &&
            ((void*)0) != ble_batchscan_cb.p_thres_cback) {
        ble_batchscan_cb.p_thres_cback(ble_batchscan_cb.ref_value);
        return;
    }

    if (HCI_VSE_SUBCODE_BLE_TRACKING_SUB_EVT == sub_event && ((void*)0) != ble_advtrack_cb.p_track_cback) {
        if (len < 10) {
            return;
        }

        memset(&adv_data, 0 , sizeof(tBTM_BLE_TRACK_ADV_DATA));
        BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);
        adv_data.client_if = (UINT8)ble_advtrack_cb.ref_value;
        if (cmn_ble_vsc_cb.version_supported > BTM_VSC_CHIP_CAPABILITY_L_VERSION) {
            STREAM_TO_UINT8(adv_data.filt_index, p);
            STREAM_TO_UINT8(adv_data.advertiser_state, p);
            STREAM_TO_UINT8(adv_data.advertiser_info_present, p);
            STREAM_TO_BDADDR(adv_data.bd_addr.address, p);
            STREAM_TO_UINT8(adv_data.addr_type, p);


            if (ADV_INFO_PRESENT == adv_data.advertiser_info_present) {
                STREAM_TO_UINT8(adv_data.tx_power, p);
                STREAM_TO_UINT8(adv_data.rssi_value, p);
                STREAM_TO_UINT16(adv_data.time_stamp, p);

                STREAM_TO_UINT8(adv_data.adv_pkt_len, p);
                if (adv_data.adv_pkt_len > 0) {
                    adv_data.p_adv_pkt_data = osi_malloc(adv_data.adv_pkt_len);
                    memcpy(adv_data.p_adv_pkt_data, p, adv_data.adv_pkt_len);
                }

                STREAM_TO_UINT8(adv_data.scan_rsp_len, p);
                if (adv_data.scan_rsp_len > 0) {
                    adv_data.p_scan_rsp_data = osi_malloc(adv_data.scan_rsp_len);
                    memcpy(adv_data.p_scan_rsp_data, p, adv_data.scan_rsp_len);
                }
            }
        } else {

            STREAM_TO_UINT8(adv_data.filt_index, p);
            STREAM_TO_UINT8(adv_data.addr_type, p);
            STREAM_TO_BDADDR(adv_data.bd_addr.address, p);
            STREAM_TO_UINT8(adv_data.advertiser_state, p);
        }

        BTM_TRACE_EVENT("track_adv_vse_cback called: %d, %d, %d", adv_data.filt_index,
                        adv_data.addr_type, adv_data.advertiser_state);
        ble_advtrack_cb.p_track_cback(&adv_data);
        return;
    }
}
