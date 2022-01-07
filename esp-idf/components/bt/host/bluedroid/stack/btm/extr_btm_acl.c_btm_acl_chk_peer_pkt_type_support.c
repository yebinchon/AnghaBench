
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * peer_lmp_features; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT16 ;


 int BTM_ACL_PKT_TYPES_MASK_DH3 ;
 int BTM_ACL_PKT_TYPES_MASK_DH5 ;
 int BTM_ACL_PKT_TYPES_MASK_DM3 ;
 int BTM_ACL_PKT_TYPES_MASK_DM5 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 ;
 int BTM_ACL_PKT_TYPES_MASK_NO_3_DH5 ;
 int HCI_3_SLOT_EDR_ACL_SUPPORTED (int ) ;
 int HCI_3_SLOT_PACKETS_SUPPORTED (int ) ;
 int HCI_5_SLOT_EDR_ACL_SUPPORTED (int ) ;
 int HCI_5_SLOT_PACKETS_SUPPORTED (int ) ;
 scalar_t__ HCI_EDR_ACL_2MPS_SUPPORTED (int ) ;
 scalar_t__ HCI_EDR_ACL_3MPS_SUPPORTED (int ) ;
 size_t HCI_EXT_FEATURES_PAGE_0 ;

void btm_acl_chk_peer_pkt_type_support (tACL_CONN *p, UINT16 *p_pkt_type)
{

    if (!HCI_3_SLOT_PACKETS_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        *p_pkt_type &= ~(BTM_ACL_PKT_TYPES_MASK_DH3 + BTM_ACL_PKT_TYPES_MASK_DM3);
    }

    if (!HCI_5_SLOT_PACKETS_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        *p_pkt_type &= ~(BTM_ACL_PKT_TYPES_MASK_DH5 + BTM_ACL_PKT_TYPES_MASK_DM5);
    }


    if (!HCI_EDR_ACL_2MPS_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {

        *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 + BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 +
                        BTM_ACL_PKT_TYPES_MASK_NO_2_DH5);
    }

    if (!HCI_EDR_ACL_3MPS_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {

        *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 + BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 +
                        BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
    }


    if (HCI_EDR_ACL_2MPS_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])
            || HCI_EDR_ACL_3MPS_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        if (!HCI_3_SLOT_EDR_ACL_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0]))

        {
            *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 + BTM_ACL_PKT_TYPES_MASK_NO_3_DH3);
        }

        if (!HCI_5_SLOT_EDR_ACL_SUPPORTED(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0]))

        {
            *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 + BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
        }
    }
}
