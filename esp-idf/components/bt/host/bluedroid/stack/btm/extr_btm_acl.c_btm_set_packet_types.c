
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_5__ {int pkt_types_mask; int hci_handle; } ;
typedef TYPE_1__ tACL_CONN ;
typedef int UINT16 ;
struct TYPE_6__ {int btm_acl_pkt_types_supported; } ;


 int BTM_ACL_EXCEPTION_PKTS_MASK ;
 int BTM_ACL_SUPPORTED_PKTS_MASK ;
 int BTM_CMD_STARTED ;
 int BTM_NO_RESOURCES ;
 int BTM_TRACE_DEBUG (char*,...) ;
 int btm_acl_chk_peer_pkt_type_support (TYPE_1__*,int*) ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_change_conn_type (int ,int) ;

tBTM_STATUS btm_set_packet_types (tACL_CONN *p, UINT16 pkt_types)
{
    UINT16 temp_pkt_types;
    BTM_TRACE_DEBUG ("btm_set_packet_types\n");

    temp_pkt_types = (pkt_types & BTM_ACL_SUPPORTED_PKTS_MASK &
                      btm_cb.btm_acl_pkt_types_supported);


    temp_pkt_types |= ((pkt_types & BTM_ACL_EXCEPTION_PKTS_MASK) |
                       (btm_cb.btm_acl_pkt_types_supported & BTM_ACL_EXCEPTION_PKTS_MASK));


    btm_acl_chk_peer_pkt_type_support (p, &temp_pkt_types);

    BTM_TRACE_DEBUG ("SetPacketType Mask -> 0x%04x\n", temp_pkt_types);

    if (!btsnd_hcic_change_conn_type (p->hci_handle, temp_pkt_types)) {
        return (BTM_NO_RESOURCES);
    }

    p->pkt_types_mask = temp_pkt_types;

    return (BTM_CMD_STARTED);
}
