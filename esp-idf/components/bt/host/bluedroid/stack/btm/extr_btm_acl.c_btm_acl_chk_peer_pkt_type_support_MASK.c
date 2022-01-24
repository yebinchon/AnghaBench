#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * peer_lmp_features; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_DH3 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_DH5 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_DM3 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_DM5 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 ; 
 int /*<<< orphan*/  BTM_ACL_PKT_TYPES_MASK_NO_3_DH5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 size_t HCI_EXT_FEATURES_PAGE_0 ; 

void FUNC6 (tACL_CONN *p, UINT16 *p_pkt_type)
{
    /* 3 and 5 slot packets? */
    if (!FUNC1(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        *p_pkt_type &= ~(BTM_ACL_PKT_TYPES_MASK_DH3 + BTM_ACL_PKT_TYPES_MASK_DM3);
    }

    if (!FUNC3(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        *p_pkt_type &= ~(BTM_ACL_PKT_TYPES_MASK_DH5 + BTM_ACL_PKT_TYPES_MASK_DM5);
    }

    /* 2 and 3 MPS support? */
    if (!FUNC4(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        /* Not supported. Add 'not_supported' mask for all 2MPS packet types */
        *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH1 + BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 +
                        BTM_ACL_PKT_TYPES_MASK_NO_2_DH5);
    }

    if (!FUNC5(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        /* Not supported. Add 'not_supported' mask for all 3MPS packet types */
        *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_3_DH1 + BTM_ACL_PKT_TYPES_MASK_NO_3_DH3 +
                        BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
    }

    /* EDR 3 and 5 slot support? */
    if (FUNC4(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])
            || FUNC5(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0])) {
        if (!FUNC0(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0]))
            /* Not supported. Add 'not_supported' mask for all 3-slot EDR packet types */
        {
            *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH3 + BTM_ACL_PKT_TYPES_MASK_NO_3_DH3);
        }

        if (!FUNC2(p->peer_lmp_features[HCI_EXT_FEATURES_PAGE_0]))
            /* Not supported. Add 'not_supported' mask for all 5-slot EDR packet types */
        {
            *p_pkt_type |= (BTM_ACL_PKT_TYPES_MASK_NO_2_DH5 + BTM_ACL_PKT_TYPES_MASK_NO_3_DH5);
        }
    }
}