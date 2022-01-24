#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
struct TYPE_3__ {void* esco_supported; } ;
struct TYPE_4__ {int btm_acl_pkt_types_supported; int btm_sco_pkt_types_supported; int /*<<< orphan*/  btm_def_link_policy; TYPE_1__ sco_cb; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  BTM_DEFAULT_SCAN_TYPE ; 
 int BTM_ESCO_LINK_ONLY_MASK ; 
 int /*<<< orphan*/  BTM_INQ_RESULT_EXTENDED ; 
 int /*<<< orphan*/  BTM_INQ_RESULT_WITH_RSSI ; 
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC5 (int const*) ; 
 int /*<<< orphan*/  FUNC6 (int const*) ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (int const*) ; 
 int /*<<< orphan*/  FUNC9 (int const*) ; 
 int /*<<< orphan*/  FUNC10 (int const*) ; 
 int /*<<< orphan*/  FUNC11 (int const*) ; 
 int /*<<< orphan*/  FUNC12 (int const*) ; 
 int /*<<< orphan*/  FUNC13 (int const*) ; 
 int /*<<< orphan*/  HCI_ENABLE_HOLD_MODE ; 
 int /*<<< orphan*/  HCI_ENABLE_MASTER_SLAVE_SWITCH ; 
 int /*<<< orphan*/  HCI_ENABLE_PARK_MODE ; 
 int /*<<< orphan*/  HCI_ENABLE_SNIFF_MODE ; 
 int /*<<< orphan*/  FUNC14 (int const*) ; 
 int /*<<< orphan*/  FUNC15 (int const*) ; 
 int /*<<< orphan*/  FUNC16 (int const*) ; 
#define  HCI_EXT_FEATURES_PAGE_0 130 
#define  HCI_EXT_FEATURES_PAGE_1 129 
#define  HCI_EXT_FEATURES_PAGE_2 128 
 int /*<<< orphan*/  FUNC17 (int const*) ; 
 int /*<<< orphan*/  FUNC18 (int const*) ; 
 int /*<<< orphan*/  FUNC19 (int const*) ; 
 int /*<<< orphan*/  FUNC20 (int const*) ; 
 int /*<<< orphan*/  FUNC21 (int const*) ; 
 int /*<<< orphan*/  FUNC22 (int const*) ; 
 int /*<<< orphan*/  FUNC23 (int const*) ; 
 int /*<<< orphan*/  FUNC24 (int const*) ; 
 int /*<<< orphan*/  FUNC25 (int const*) ; 
 int /*<<< orphan*/  FUNC26 (int const*) ; 
 void* TRUE ; 
 TYPE_2__ btm_cb ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (void*) ; 

__attribute__((used)) static void FUNC29 (UINT8 page_number, const UINT8 *p_features)
{
    FUNC3 ("btm_decode_ext_features_page page: %d", page_number);
    switch (page_number) {
    /* Extended (Legacy) Page 0 */
    case HCI_EXT_FEATURES_PAGE_0:

        /* Create ACL supported packet types mask */
        btm_cb.btm_acl_pkt_types_supported = (BTM_ACL_PKT_TYPES_MASK_DH1 +
                                              BTM_ACL_PKT_TYPES_MASK_DM1);

        if (FUNC7(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_DH3 +
                                                   BTM_ACL_PKT_TYPES_MASK_DM3);
        }

        if (FUNC9(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_DH5 +
                                                   BTM_ACL_PKT_TYPES_MASK_DM5);
        }

        /* Add in EDR related ACL types */
        if (!FUNC10(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_2_DH5);
        }

        if (!FUNC11(p_features)) {
            btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 +
                                                   BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
        }

        /* Check to see if 3 and 5 slot packets are available */
        if (FUNC10(p_features) ||
                FUNC11(p_features)) {
            if (!FUNC5(p_features)) {
                btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 +
                                                       BTM_ACL_PKT_TYPES_MASK_NO_3_DH3);
            }

            if (!FUNC8(p_features)) {
                btm_cb.btm_acl_pkt_types_supported |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 +
                                                       BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
            }
        }

        FUNC3("Local supported ACL packet types: 0x%04x",
                        btm_cb.btm_acl_pkt_types_supported);

        /* Create (e)SCO supported packet types mask */
        btm_cb.btm_sco_pkt_types_supported = 0;
#if BTM_SCO_INCLUDED == TRUE
        btm_cb.sco_cb.esco_supported = FALSE;
#endif
        if (FUNC24(p_features)) {
            btm_cb.btm_sco_pkt_types_supported = BTM_SCO_PKT_TYPES_MASK_HV1;

            if (FUNC19(p_features)) {
                btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_HV2;
            }

            if (FUNC20(p_features)) {
                btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_HV3;
            }
        }

        if (FUNC14(p_features)) {
            btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_EV3;
        }

        if (FUNC15(p_features)) {
            btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_EV4;
        }

        if (FUNC16(p_features)) {
            btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_EV5;
        }
#if BTM_SCO_INCLUDED == TRUE
        if (btm_cb.btm_sco_pkt_types_supported & BTM_ESCO_LINK_ONLY_MASK) {
            btm_cb.sco_cb.esco_supported = TRUE;

            /* Add in EDR related eSCO types */
            if (FUNC12(p_features)) {
                if (!FUNC6(p_features)) {
                    btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_NO_2_EV5;
                }
            } else {
                btm_cb.btm_sco_pkt_types_supported |= (BTM_SCO_PKT_TYPES_MASK_NO_2_EV3 +
                                                       BTM_SCO_PKT_TYPES_MASK_NO_2_EV5);
            }

            if (FUNC13(p_features)) {
                if (!FUNC6(p_features)) {
                    btm_cb.btm_sco_pkt_types_supported |= BTM_SCO_PKT_TYPES_MASK_NO_3_EV5;
                }
            } else {
                btm_cb.btm_sco_pkt_types_supported |= (BTM_SCO_PKT_TYPES_MASK_NO_3_EV3 +
                                                       BTM_SCO_PKT_TYPES_MASK_NO_3_EV5);
            }
        }
#endif

        FUNC3("Local supported SCO packet types: 0x%04x",
                        btm_cb.btm_sco_pkt_types_supported);

        /* Create Default Policy Settings */
        if (FUNC26(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_MASTER_SLAVE_SWITCH;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_MASTER_SLAVE_SWITCH;
        }

        if (FUNC18(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_HOLD_MODE;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_HOLD_MODE;
        }

        if (FUNC25(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_SNIFF_MODE;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_SNIFF_MODE;
        }

        if (FUNC23(p_features)) {
            btm_cb.btm_def_link_policy |= HCI_ENABLE_PARK_MODE;
        } else {
            btm_cb.btm_def_link_policy &= ~HCI_ENABLE_PARK_MODE;
        }

        FUNC27 ();

        if (FUNC21(p_features)) {
            if (FUNC17(p_features)) {
                FUNC0 (BTM_INQ_RESULT_EXTENDED);
            } else {
                FUNC0 (BTM_INQ_RESULT_WITH_RSSI);
            }
        }

#if L2CAP_NON_FLUSHABLE_PB_INCLUDED == TRUE
        if ( FUNC22(p_features)) {
            FUNC28(TRUE);
        } else {
            FUNC28(FALSE);
        }
#endif
        FUNC2 (BTM_DEFAULT_SCAN_TYPE);
        FUNC1 (BTM_DEFAULT_SCAN_TYPE);

        break;

    /* Extended Page 1 */
    case HCI_EXT_FEATURES_PAGE_1:
        /* Nothing to do for page 1 */
        break;

    /* Extended Page 2 */
    case HCI_EXT_FEATURES_PAGE_2:
        /* Nothing to do for page 2 */
        break;

    default:
        FUNC4("btm_decode_ext_features_page page=%d unknown", page_number);
        break;
    }
}