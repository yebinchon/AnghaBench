
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_11__ {scalar_t__ tot_scan_results_strg; } ;
typedef TYPE_2__ tBTM_BLE_VSC_CB ;
typedef int tBTM_BLE_TRACK_ADV_CBACK ;
struct TYPE_10__ {int (* p_track_adv_cback ) (TYPE_4__*) ;scalar_t__ ref_value; } ;
struct TYPE_12__ {TYPE_1__ ble_track_advert; } ;
typedef TYPE_3__ tBTA_DM_MSG ;
struct TYPE_13__ {scalar_t__ client_if; int advertiser_info_present; } ;
typedef TYPE_4__ tBTA_DM_BLE_TRACK_ADV_DATA ;
typedef scalar_t__ UINT8 ;
typedef TYPE_4__ BD_ADDR ;


 int BTM_BleGetVendorCapabilities (TYPE_2__*) ;
 scalar_t__ BTM_BleTrackAdvertiser (int *,scalar_t__) ;
 scalar_t__ BTM_CMD_STARTED ;
 int NO_ADV_INFO_PRESENT ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (TYPE_4__*) ;

void bta_dm_ble_track_advertiser(tBTA_DM_MSG *p_data)
{
    tBTM_STATUS btm_status = 0;
    BD_ADDR bda;
    memset(&bda, 0 , sizeof(BD_ADDR));
    tBTM_BLE_VSC_CB cmn_ble_vsc_cb;
    tBTA_DM_BLE_TRACK_ADV_DATA track_adv_data;

    BTM_BleGetVendorCapabilities(&cmn_ble_vsc_cb);

    if (0 != cmn_ble_vsc_cb.tot_scan_results_strg) {
        btm_status = BTM_BleTrackAdvertiser((tBTM_BLE_TRACK_ADV_CBACK *)
                                            p_data->ble_track_advert.p_track_adv_cback,
                                            p_data->ble_track_advert.ref_value);
    }

    if (BTM_CMD_STARTED != btm_status) {
        memset(&track_adv_data, 0, sizeof(tBTA_DM_BLE_TRACK_ADV_DATA));
        track_adv_data.advertiser_info_present = NO_ADV_INFO_PRESENT;
        track_adv_data.client_if = (UINT8)p_data->ble_track_advert.ref_value;
        p_data->ble_track_advert.p_track_adv_cback(&track_adv_data);
    }
}
