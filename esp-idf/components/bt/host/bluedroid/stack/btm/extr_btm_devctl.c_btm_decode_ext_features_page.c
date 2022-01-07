
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_3__ {void* esco_supported; } ;
struct TYPE_4__ {int btm_acl_pkt_types_supported; int btm_sco_pkt_types_supported; int btm_def_link_policy; TYPE_1__ sco_cb; } ;


 int BTM_ACL_PKT_TYPES_MASK_DH1 ;
 int BTM_ACL_PKT_TYPES_MASK_DH3 ;
 int BTM_ACL_PKT_TYPES_MASK_DH5 ;
 int BTM_ACL_PKT_TYPES_MASK_DM1 ;
 int BTM_ACL_PKT_TYPES_MASK_DM3 ;
 int BTM_ACL_PKT_TYPES_MASK_DM5 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_3_DH5 ;
 int BTM_DEFAULT_SCAN_TYPE ;
 int BTM_ESCO_LINK_ONLY_MASK ;
 int BTM_INQ_RESULT_EXTENDED ;
 int BTM_INQ_RESULT_WITH_RSSI ;
 int BTM_SCO_PKT_TYPES_MASK_EV3 ;
 int BTM_SCO_PKT_TYPES_MASK_EV4 ;
 int BTM_SCO_PKT_TYPES_MASK_EV5 ;
 int BTM_SCO_PKT_TYPES_MASK_HV1 ;
 int BTM_SCO_PKT_TYPES_MASK_HV2 ;
 int BTM_SCO_PKT_TYPES_MASK_HV3 ;
 int BTM_SCO_PKT_TYPES_MASK_NO_2_EV3 ;
 int BTM_SCO_PKT_TYPES_MASK_NO_2_EV5 ;
 int BTM_SCO_PKT_TYPES_MASK_NO_3_EV3 ;
 int BTM_SCO_PKT_TYPES_MASK_NO_3_EV5 ;
 int BTM_SetInquiryMode (int ) ;
 int BTM_SetInquiryScanType (int ) ;
 int BTM_SetPageScanType (int ) ;
 int BTM_TRACE_DEBUG (char*,int) ;
 int BTM_TRACE_ERROR (char*,int) ;
 void* FALSE ;
 int HCI_3_SLOT_EDR_ACL_SUPPORTED (int const*) ;
 int HCI_3_SLOT_EDR_ESCO_SUPPORTED (int const*) ;
 int HCI_3_SLOT_PACKETS_SUPPORTED (int const*) ;
 int HCI_5_SLOT_EDR_ACL_SUPPORTED (int const*) ;
 int HCI_5_SLOT_PACKETS_SUPPORTED (int const*) ;
 int HCI_EDR_ACL_2MPS_SUPPORTED (int const*) ;
 int HCI_EDR_ACL_3MPS_SUPPORTED (int const*) ;
 int HCI_EDR_ESCO_2MPS_SUPPORTED (int const*) ;
 int HCI_EDR_ESCO_3MPS_SUPPORTED (int const*) ;
 int HCI_ENABLE_HOLD_MODE ;
 int HCI_ENABLE_MASTER_SLAVE_SWITCH ;
 int HCI_ENABLE_PARK_MODE ;
 int HCI_ENABLE_SNIFF_MODE ;
 int HCI_ESCO_EV3_SUPPORTED (int const*) ;
 int HCI_ESCO_EV4_SUPPORTED (int const*) ;
 int HCI_ESCO_EV5_SUPPORTED (int const*) ;



 int HCI_EXT_INQ_RSP_SUPPORTED (int const*) ;
 int HCI_HOLD_MODE_SUPPORTED (int const*) ;
 int HCI_HV2_PACKETS_SUPPORTED (int const*) ;
 int HCI_HV3_PACKETS_SUPPORTED (int const*) ;
 int HCI_LMP_INQ_RSSI_SUPPORTED (int const*) ;
 int HCI_NON_FLUSHABLE_PB_SUPPORTED (int const*) ;
 int HCI_PARK_MODE_SUPPORTED (int const*) ;
 int HCI_SCO_LINK_SUPPORTED (int const*) ;
 int HCI_SNIFF_MODE_SUPPORTED (int const*) ;
 int HCI_SWITCH_SUPPORTED (int const*) ;
 void* TRUE ;
 TYPE_2__ btm_cb ;
 int btm_sec_dev_reset () ;
 int l2cu_set_non_flushable_pbf (void*) ;

__attribute__((used)) static void btm_decode_ext_features_page (UINT8 page_number, const UINT8 *p_features)
{
    BTM_TRACE_DEBUG ("btm_decode_ext_features_page page: %d", page_number);
    switch (page_number) {

    case 130:


        btm_cb.btm_acl_pkt_types_supported = (BTM_ACL_PKT_TYPES_MASK_DH1 +
                                              BTM_ACL_PKT_TYPES_MASK_DM1);

        if (HCI_3_SLOT_PACKETS_SUPPORTED(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_DH3 +
                                                   BTM_ACL_PKT_TYPES_MASK_DM3);
        }

        if (HCI_5_SLOT_PACKETS_SUPPORTED(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_DH5 +
                                                   BTM_ACL_PKT_TYPES_MASK_DM5);
        }


        if (!HCI_EDR_ACL_2MPS_SUPPORTED(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_2_DH5);
        }

        if (!HCI_EDR_ACL_3MPS_SUPPORTED(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
        }


        if (HCI_EDR_ACL_2MPS_SUPPORTED(p_features) ||
                HCI_EDR_ACL_3MPS_SUPPORTED(p_features)) {
            if (!HCI_3_SLOT_EDR_ACL_SUPPORTED(p_features)) {
                btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 +
                                                       BTM_ACL_PKT_TYPES_MASK_NO_3_DH3);
            }

            if (!HCI_5_SLOT_EDR_ACL_SUPPORTED(p_features)) {
                btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 +
                                                       BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
            }
        }

        BTM_TRACE_DEBUG("Local supported ACL packet types: 0x%04x",
                        btm_cb.btm_acl_pkt_types_supported);


        btm_cb.btm_sco_pkt_types_supported = 0;

        btm_cb.sco_cb.esco_supported = FALSE;

        if (HCI_SCO_LINK_SUPPORTED(p_features)) {
            btm_cb.btm_sco_pkt_types_supported = BTM_SCO_PKT_TYPES_MASK_HV1;

            if (HCI_HV2_PACKETS_SUPPORTED(p_features)) {
                btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_HV2;
            }

            if (HCI_HV3_PACKETS_SUPPORTED(p_features)) {
                btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_HV3;
            }
        }

        if (HCI_ESCO_EV3_SUPPORTED(p_features)) {
            btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_EV3;
        }

        if (HCI_ESCO_EV4_SUPPORTED(p_features)) {
            btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_EV4;
        }

        if (HCI_ESCO_EV5_SUPPORTED(p_features)) {
            btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_EV5;
        }

        if (btm_cb.btm_sco_pkt_types_supported & BTM_ESCO_LINK_ONLY_MASK) {
            btm_cb.sco_cb.esco_supported = TRUE;


            if (HCI_EDR_ESCO_2MPS_SUPPORTED(p_features)) {
                if (!HCI_3_SLOT_EDR_ESCO_SUPPORTED(p_features)) {
                    btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_NO_2_EV5;
                }
            } else {
                btm_cb.btm_sco_pkt_types_supported |= (BTM_SCO_PKT_TYPES_MASK_NO_2_EV3 +
                                                       BTM_SCO_PKT_TYPES_MASK_NO_2_EV5);
            }

            if (HCI_EDR_ESCO_3MPS_SUPPORTED(p_features)) {
                if (!HCI_3_SLOT_EDR_ESCO_SUPPORTED(p_features)) {
                    btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_NO_3_EV5;
                }
            } else {
                btm_cb.btm_sco_pkt_types_supported |= (BTM_SCO_PKT_TYPES_MASK_NO_3_EV3 +
                                                       BTM_SCO_PKT_TYPES_MASK_NO_3_EV5);
            }
        }


        BTM_TRACE_DEBUG("Local supported SCO packet types: 0x%04x",
                        btm_cb.btm_sco_pkt_types_supported);


        if (HCI_SWITCH_SUPPORTED(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_MASTER_SLAVE_SWITCH;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_MASTER_SLAVE_SWITCH;
        }

        if (HCI_HOLD_MODE_SUPPORTED(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_HOLD_MODE;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_HOLD_MODE;
        }

        if (HCI_SNIFF_MODE_SUPPORTED(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_SNIFF_MODE;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_SNIFF_MODE;
        }

        if (HCI_PARK_MODE_SUPPORTED(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_PARK_MODE;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_PARK_MODE;
        }

        btm_sec_dev_reset ();

        if (HCI_LMP_INQ_RSSI_SUPPORTED(p_features)) {
            if (HCI_EXT_INQ_RSP_SUPPORTED(p_features)) {
                BTM_SetInquiryMode (BTM_INQ_RESULT_EXTENDED);
            } else {
                BTM_SetInquiryMode (BTM_INQ_RESULT_WITH_RSSI);
            }
        }


        if ( HCI_NON_FLUSHABLE_PB_SUPPORTED(p_features)) {
            l2cu_set_non_flushable_pbf(TRUE);
        } else {
            l2cu_set_non_flushable_pbf(FALSE);
        }

        BTM_SetPageScanType (BTM_DEFAULT_SCAN_TYPE);
        BTM_SetInquiryScanType (BTM_DEFAULT_SCAN_TYPE);

        break;


    case 129:

        break;


    case 128:

        break;

    default:
        BTM_TRACE_ERROR("btm_decode_ext_features_page page=%d unknown", page_number);
        break;
    }
}
