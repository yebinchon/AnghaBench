#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  timer_entry; int /*<<< orphan*/  remote_bd_addr; int /*<<< orphan*/  link_state; scalar_t__ is_bonding; } ;
typedef  TYPE_2__ tL2C_LCB ;
struct TYPE_12__ {int clock_offset; } ;
typedef  TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_10__ {scalar_t__ page_scan_rep_mode; scalar_t__ page_scan_mode; scalar_t__ clock_offset; } ;
struct TYPE_13__ {TYPE_1__ results; } ;
typedef  TYPE_4__ tBTM_INQ_INFO ;
typedef  scalar_t__ UINT8 ;
typedef  int UINT16 ;
struct TYPE_14__ {int /*<<< orphan*/  disallow_switch; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTM_BLI_PAGE_EVT ; 
 int FUNC0 () ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 () ; 
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_LINK ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCI_CR_CONN_ALLOW_SWITCH ; 
 scalar_t__ HCI_CR_CONN_NOT_ALLOW_SWITCH ; 
 scalar_t__ HCI_MANDATARY_PAGE_SCAN_MODE ; 
 scalar_t__ HCI_PAGE_SCAN_REP_MODE_R1 ; 
 int HCI_PKT_TYPES_MASK_DH1 ; 
 int HCI_PKT_TYPES_MASK_DH3 ; 
 int HCI_PKT_TYPES_MASK_DH5 ; 
 int HCI_PKT_TYPES_MASK_DM1 ; 
 int HCI_PKT_TYPES_MASK_DM3 ; 
 int HCI_PKT_TYPES_MASK_DM5 ; 
 scalar_t__ FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  L2CAP_LINK_CONNECT_TOUT ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  LST_CONNECTING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ l2cb ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 

BOOLEAN FUNC12 (tL2C_LCB *p_lcb)
{
    UINT8            allow_switch = HCI_CR_CONN_ALLOW_SWITCH;
    tBTM_INQ_INFO    *p_inq_info;
    UINT8            page_scan_rep_mode;
    UINT8            page_scan_mode;
    UINT16           clock_offset;
    UINT8            *p_features;
    UINT16           num_acl = FUNC0();
    tBTM_SEC_DEV_REC *p_dev_rec = FUNC7 (p_lcb->remote_bd_addr);
    UINT8            no_hi_prio_chs = FUNC10();

    p_features = FUNC2();

    FUNC4 ("l2cu_create_conn_after_switch :%d num_acl:%d no_hi: %d is_bonding:%d",
                       l2cb.disallow_switch, num_acl, no_hi_prio_chs, p_lcb->is_bonding);
    /* FW team says that we can participant in 4 piconets
     * typically 3 piconet + 1 for scanning.
     * We can enhance the code to count the number of piconets later. */
    if ( ((!l2cb.disallow_switch && (num_acl < 3)) || (p_lcb->is_bonding && (no_hi_prio_chs == 0)))
            && FUNC3(p_features)) {
        allow_switch = HCI_CR_CONN_ALLOW_SWITCH;
    } else {
        allow_switch = HCI_CR_CONN_NOT_ALLOW_SWITCH;
    }

    p_lcb->link_state = LST_CONNECTING;

    /* Check with the BT manager if details about remote device are known */
    if ((p_inq_info = FUNC1(p_lcb->remote_bd_addr)) != NULL) {
        page_scan_rep_mode = p_inq_info->results.page_scan_rep_mode;
        page_scan_mode = p_inq_info->results.page_scan_mode;
        clock_offset = (UINT16)(p_inq_info->results.clock_offset);
    } else {
        /* No info known. Use default settings */
        page_scan_rep_mode = HCI_PAGE_SCAN_REP_MODE_R1;
        page_scan_mode = HCI_MANDATARY_PAGE_SCAN_MODE;

        clock_offset = (p_dev_rec) ? p_dev_rec->clock_offset : 0;
    }

    if (!FUNC8 (p_lcb->remote_bd_addr,
                                 ( HCI_PKT_TYPES_MASK_DM1 | HCI_PKT_TYPES_MASK_DH1
                                   | HCI_PKT_TYPES_MASK_DM3 | HCI_PKT_TYPES_MASK_DH3
                                   | HCI_PKT_TYPES_MASK_DM5 | HCI_PKT_TYPES_MASK_DH5 ),
                                 page_scan_rep_mode,
                                 page_scan_mode,
                                 clock_offset,
                                 allow_switch))

    {
        FUNC5 ("L2CAP - no buffer for l2cu_create_conn");
        FUNC11 (p_lcb);
        return (FALSE);
    }

    FUNC6 (BTM_BLI_PAGE_EVT);

    FUNC9 (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK,
                     L2CAP_LINK_CONNECT_TOUT);

    return (TRUE);
}