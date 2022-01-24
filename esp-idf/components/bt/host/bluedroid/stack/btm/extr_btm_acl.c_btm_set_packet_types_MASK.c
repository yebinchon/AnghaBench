#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tBTM_STATUS ;
struct TYPE_5__ {int pkt_types_mask; int /*<<< orphan*/  hci_handle; } ;
typedef  TYPE_1__ tACL_CONN ;
typedef  int UINT16 ;
struct TYPE_6__ {int btm_acl_pkt_types_supported; } ;

/* Variables and functions */
 int BTM_ACL_EXCEPTION_PKTS_MASK ; 
 int BTM_ACL_SUPPORTED_PKTS_MASK ; 
 int /*<<< orphan*/  BTM_CMD_STARTED ; 
 int /*<<< orphan*/  BTM_NO_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*) ; 
 TYPE_3__ btm_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

tBTM_STATUS FUNC3 (tACL_CONN *p, UINT16 pkt_types)
{
    UINT16 temp_pkt_types;
    FUNC0 ("btm_set_packet_types\n");
    /* Save in the ACL control blocks, types that we support */
    temp_pkt_types = (pkt_types & BTM_ACL_SUPPORTED_PKTS_MASK &
                      btm_cb.btm_acl_pkt_types_supported);

    /* OR in any exception packet types if at least 2.0 version of spec */
    temp_pkt_types |= ((pkt_types & BTM_ACL_EXCEPTION_PKTS_MASK) |
                       (btm_cb.btm_acl_pkt_types_supported & BTM_ACL_EXCEPTION_PKTS_MASK));

    /* Exclude packet types not supported by the peer */
    FUNC1 (p, &temp_pkt_types);

    FUNC0 ("SetPacketType Mask -> 0x%04x\n", temp_pkt_types);

    if (!FUNC2 (p->hci_handle, temp_pkt_types)) {
        return (BTM_NO_RESOURCES);
    }

    p->pkt_types_mask = temp_pkt_types;

    return (BTM_CMD_STARTED);
}