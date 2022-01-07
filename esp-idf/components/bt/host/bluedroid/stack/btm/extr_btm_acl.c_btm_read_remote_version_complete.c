
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ hci_handle; scalar_t__ lmp_version; scalar_t__ manufacturer; scalar_t__ lmp_subversion; scalar_t__ transport; scalar_t__ link_role; int remote_addr; int peer_le_features; scalar_t__ in_use; } ;
typedef TYPE_1__ tACL_CONN ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {TYPE_1__* acl_db; } ;
struct TYPE_5__ {int (* get_ble_default_data_packet_txtime ) () ;int (* get_ble_default_data_packet_length ) () ;} ;


 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ BT_TRANSPORT_LE ;
 scalar_t__ HCI_LE_DATA_LEN_EXT_SUPPORTED (int ) ;
 scalar_t__ HCI_ROLE_MASTER ;
 scalar_t__ HCI_SUCCESS ;
 int MAX_L2CAP_LINKS ;
 int STREAM_TO_UINT16 (scalar_t__,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_ble_read_remote_feat (scalar_t__) ;
 int btsnd_hcic_ble_set_data_length (scalar_t__,int ,int ) ;
 TYPE_2__* controller_get_interface () ;
 int l2cble_notify_le_connection (int ) ;
 int stub1 () ;
 int stub2 () ;

void btm_read_remote_version_complete (UINT8 *p)
{
    tACL_CONN *p_acl_cb = &btm_cb.acl_db[0];
    UINT8 status;
    UINT16 handle;
    int xx;
    BTM_TRACE_DEBUG ("btm_read_remote_version_complete\n");

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);


    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p_acl_cb++) {
        if ((p_acl_cb->in_use) && (p_acl_cb->hci_handle == handle)) {
            if (status == HCI_SUCCESS) {
                STREAM_TO_UINT8 (p_acl_cb->lmp_version, p);
                STREAM_TO_UINT16 (p_acl_cb->manufacturer, p);
                STREAM_TO_UINT16 (p_acl_cb->lmp_subversion, p);
            }

            if (p_acl_cb->transport == BT_TRANSPORT_LE) {
                if(p_acl_cb->link_role == HCI_ROLE_MASTER) {
                    if (HCI_LE_DATA_LEN_EXT_SUPPORTED(p_acl_cb->peer_le_features)) {
                        uint16_t data_length = controller_get_interface()->get_ble_default_data_packet_length();
                        uint16_t data_txtime = controller_get_interface()->get_ble_default_data_packet_txtime();
                        btsnd_hcic_ble_set_data_length(p_acl_cb->hci_handle, data_length, data_txtime);
                    }
                    l2cble_notify_le_connection (p_acl_cb->remote_addr);
                } else {

                     btsnd_hcic_ble_read_remote_feat(p_acl_cb->hci_handle);
                }
            }

            break;
        }
    }
}
