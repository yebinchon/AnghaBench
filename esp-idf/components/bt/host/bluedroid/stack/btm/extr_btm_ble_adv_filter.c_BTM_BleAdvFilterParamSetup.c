
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_PF_PARAM_CBACK ;
struct TYPE_4__ {int filt_logic_type; int rssi_high_thres; int dely_mode; int found_timeout_cnt; int rssi_low_thres; int num_of_tracking_entries; int lost_timeout; int found_timeout; int logic_type; int feat_seln; } ;
typedef TYPE_1__ tBTM_BLE_PF_FILT_PARAMS ;
typedef int tBTM_BLE_PF_FILT_INDEX ;
typedef int tBTM_BLE_PF_COUNT ;
typedef int tBLE_BD_ADDR ;
typedef int UINT8 ;
struct TYPE_5__ {scalar_t__ version_supported; } ;


 int BTM_BLE_ADV_FILT_FEAT_SELN_LEN ;
 int BTM_BLE_ADV_FILT_META_HDR_LENGTH ;
 int BTM_BLE_ADV_FILT_TRACK_NUM ;
 int BTM_BLE_FILT_ADV_PARAM ;
 int BTM_BLE_META_PF_FEAT_SEL ;
 int BTM_BLE_PF_TYPE_ALL ;
 int BTM_BLE_SCAN_COND_ADD ;
 int BTM_BLE_SCAN_COND_CLEAR ;
 int BTM_BLE_SCAN_COND_DELETE ;
 int BTM_NO_RESOURCES ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*,int ) ;
 int BTM_TRACE_ERROR (char*) ;
 int BTM_TRACE_EVENT (char*) ;
 scalar_t__ BTM_VSC_CHIP_CAPABILITY_L_VERSION ;
 int BTM_VendorSpecificCommand (int ,int,int*,int ) ;
 int BTM_WRONG_MODE ;
 int HCI_BLE_ADV_FILTER_OCF ;
 int UINT16_TO_STREAM (int*,int ) ;
 int UINT8_TO_STREAM (int*,int) ;
 int btm_ble_advfilt_enq_op_q (int,int,int ,int ,int *,int *) ;
 int btm_ble_dealloc_addr_filter_counter (int *,int ) ;
 int * btm_ble_find_addr_filter_counter (int *) ;
 scalar_t__ btm_ble_obtain_vsc_details () ;
 int btm_ble_scan_pf_cmpl_cback ;
 TYPE_2__ cmn_ble_adv_vsc_cb ;
 int memset (int*,int ,int) ;

tBTM_STATUS BTM_BleAdvFilterParamSetup(int action, tBTM_BLE_PF_FILT_INDEX filt_index,
                                       tBTM_BLE_PF_FILT_PARAMS *p_filt_params,
                                       tBLE_BD_ADDR *p_target, tBTM_BLE_PF_PARAM_CBACK *p_cmpl_cback,
                                       tBTM_BLE_REF_VALUE ref_value)
{
    tBTM_STATUS st = BTM_WRONG_MODE;
    tBTM_BLE_PF_COUNT *p_bda_filter = ((void*)0);
    UINT8 len = BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_ADV_FILT_FEAT_SELN_LEN +
                BTM_BLE_ADV_FILT_TRACK_NUM;
    UINT8 param[len], *p;

    if (BTM_SUCCESS != btm_ble_obtain_vsc_details()) {
        return st;
    }

    p = param;
    memset(param, 0, len);
    BTM_TRACE_EVENT (" BTM_BleAdvFilterParamSetup");

    if (BTM_BLE_SCAN_COND_ADD == action) {
        p_bda_filter = btm_ble_find_addr_filter_counter(p_target);
        if (((void*)0) == p_bda_filter) {
            BTM_TRACE_ERROR("BD Address not found!");
            return st;
        }

        BTM_TRACE_DEBUG("BTM_BleAdvFilterParamSetup : Feat mask:%d", p_filt_params->feat_seln);

        UINT8_TO_STREAM(p, BTM_BLE_META_PF_FEAT_SEL);
        UINT8_TO_STREAM(p, BTM_BLE_SCAN_COND_ADD);


        UINT8_TO_STREAM(p, filt_index);


        UINT16_TO_STREAM(p, p_filt_params->feat_seln);

        UINT16_TO_STREAM(p, p_filt_params->logic_type);

        UINT8_TO_STREAM(p, p_filt_params->filt_logic_type);

        UINT8_TO_STREAM(p, p_filt_params->rssi_high_thres);

        UINT8_TO_STREAM(p, p_filt_params->dely_mode);

        if (0x01 == p_filt_params->dely_mode) {

            UINT16_TO_STREAM(p, p_filt_params->found_timeout);

            UINT8_TO_STREAM(p, p_filt_params->found_timeout_cnt);

            UINT8_TO_STREAM(p, p_filt_params->rssi_low_thres);

            UINT16_TO_STREAM(p, p_filt_params->lost_timeout);

            if (cmn_ble_adv_vsc_cb.version_supported > BTM_VSC_CHIP_CAPABILITY_L_VERSION) {
                UINT16_TO_STREAM(p, p_filt_params->num_of_tracking_entries);
            }
        }

        if (cmn_ble_adv_vsc_cb.version_supported == BTM_VSC_CHIP_CAPABILITY_L_VERSION) {
            len = BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_ADV_FILT_FEAT_SELN_LEN;
        } else {
            len = BTM_BLE_ADV_FILT_META_HDR_LENGTH + BTM_BLE_ADV_FILT_FEAT_SELN_LEN +
                  BTM_BLE_ADV_FILT_TRACK_NUM;
        }

        if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                             (UINT8)len,
                                             param,
                                             btm_ble_scan_pf_cmpl_cback))
                == BTM_NO_RESOURCES) {
            return st;
        }
        btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_FEAT_SEL, BTM_BLE_FILT_ADV_PARAM,
                                 ref_value, ((void*)0), p_cmpl_cback);
    } else if (BTM_BLE_SCAN_COND_DELETE == action) {

        UINT8_TO_STREAM(p, BTM_BLE_META_PF_FEAT_SEL);
        UINT8_TO_STREAM(p, BTM_BLE_SCAN_COND_DELETE);

        UINT8_TO_STREAM(p, filt_index);

        if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                             (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH),
                                             param,
                                             btm_ble_scan_pf_cmpl_cback))
                == BTM_NO_RESOURCES) {
            return st;
        }
        btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_FEAT_SEL, BTM_BLE_FILT_ADV_PARAM,
                                 ref_value, ((void*)0), p_cmpl_cback);
    } else if (BTM_BLE_SCAN_COND_CLEAR == action) {

        btm_ble_dealloc_addr_filter_counter(((void*)0), BTM_BLE_PF_TYPE_ALL);


        UINT8_TO_STREAM(p, BTM_BLE_META_PF_FEAT_SEL);
        UINT8_TO_STREAM(p, BTM_BLE_SCAN_COND_CLEAR);

        if ((st = BTM_VendorSpecificCommand (HCI_BLE_ADV_FILTER_OCF,
                                             (UINT8)(BTM_BLE_ADV_FILT_META_HDR_LENGTH - 1),
                                             param,
                                             btm_ble_scan_pf_cmpl_cback))
                == BTM_NO_RESOURCES) {
            return st;
        }
        btm_ble_advfilt_enq_op_q(action, BTM_BLE_META_PF_FEAT_SEL, BTM_BLE_FILT_ADV_PARAM,
                                 ref_value, ((void*)0), p_cmpl_cback);
    }

    return st;
}
