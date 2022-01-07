
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_4__ {int adv_mode; } ;
struct TYPE_5__ {TYPE_1__ inq_var; } ;
struct TYPE_6__ {TYPE_2__ ble_ctr_cb; } ;
typedef void* BOOLEAN ;
typedef int BD_ADDR ;


 int BLE_ADDR_RANDOM ;
 scalar_t__ BLE_ADDR_TYPE_ID_BIT ;
 int BLE_CONN_IDLE ;
 int BTM_BLE_ADV_DISABLE ;
 scalar_t__ BTM_BLE_IS_RESOLVE_BDA (int ) ;
 int BTM_BLE_RL_ADV ;
 int BTM_BLE_RL_INIT ;
 int BTM_TRACE_DEBUG (char*,scalar_t__,int ,scalar_t__,scalar_t__) ;
 void* FALSE ;
 int HCID_GET_HANDLE (int ) ;
 int HCI_ENCRYPT_MODE_DISABLED ;
 scalar_t__ HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT ;
 scalar_t__ HCI_ROLE_UNKNOWN ;
 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_BDADDR (int ,scalar_t__*) ;
 int STREAM_TO_UINT16 (int ,scalar_t__*) ;
 int STREAM_TO_UINT8 (scalar_t__,scalar_t__*) ;
 int TRUE ;
 int UNUSED (int ) ;
 int btm_ble_connected (int ,int ,int ,scalar_t__,scalar_t__,void*) ;
 int btm_ble_disable_resolving_list (int ,int ) ;
 int btm_ble_refresh_local_resolvable_private_addr (int ,int ) ;
 int btm_ble_refresh_peer_resolvable_private_addr (int ,int ,int ) ;
 int btm_ble_resolve_random_addr (int ,int ,scalar_t__*) ;
 int btm_ble_resolve_random_addr_on_conn_cmpl ;
 int btm_ble_set_conn_st (int ) ;
 void* btm_ble_update_mode_operation (scalar_t__,int ,scalar_t__) ;
 TYPE_3__ btm_cb ;
 void* btm_identity_addr_to_random_pseudo (int ,scalar_t__*,int ) ;
 int btm_sec_disconnected (int ,scalar_t__) ;
 int l2c_link_hci_disc_comp (int ,scalar_t__) ;
 int l2cble_conn_comp (int ,scalar_t__,int ,scalar_t__,int ,int ,int ) ;
 void* temp_enhanced ;

void btm_ble_conn_complete(UINT8 *p, UINT16 evt_len, BOOLEAN enhanced)
{

    UINT8 *p_data = p, peer_addr_type;

    UINT8 role, status, bda_type;
    UINT16 handle;
    BD_ADDR bda;
    BD_ADDR local_rpa, peer_rpa;
    UINT16 conn_interval, conn_latency, conn_timeout;
    BOOLEAN match = FALSE;
    UNUSED(evt_len);
    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_UINT8 (role, p);
    STREAM_TO_UINT8 (bda_type, p);
    STREAM_TO_BDADDR (bda, p);
    BTM_TRACE_DEBUG("status = %d, handle = %d, role = %d, bda_type = %d",status,handle,role,bda_type);
    if (status == 0) {
        if (enhanced) {
            STREAM_TO_BDADDR (local_rpa, p);
            STREAM_TO_BDADDR (peer_rpa, p);
        }

        peer_addr_type = bda_type;
        match = btm_identity_addr_to_random_pseudo (bda, &bda_type, TRUE);
        if (!match && BTM_BLE_IS_RESOLVE_BDA(bda)) {

            temp_enhanced = enhanced;
            btm_ble_resolve_random_addr(bda, btm_ble_resolve_random_addr_on_conn_cmpl, p_data);

            temp_enhanced = FALSE;
        } else

        {
            STREAM_TO_UINT16 (conn_interval, p);
            STREAM_TO_UINT16 (conn_latency, p);
            STREAM_TO_UINT16 (conn_timeout, p);
            handle = HCID_GET_HANDLE (handle);

            btm_ble_connected(bda, handle, HCI_ENCRYPT_MODE_DISABLED, role, bda_type, match);
            l2cble_conn_comp (handle, role, bda, bda_type, conn_interval,
                              conn_latency, conn_timeout);


            if (enhanced) {
                btm_ble_refresh_local_resolvable_private_addr(bda, local_rpa);

                if (peer_addr_type & BLE_ADDR_TYPE_ID_BIT) {
                    btm_ble_refresh_peer_resolvable_private_addr(bda, peer_rpa, BLE_ADDR_RANDOM);
                }
            }

        }
    } else {
        role = HCI_ROLE_UNKNOWN;
        if (status != HCI_ERR_DIRECTED_ADVERTISING_TIMEOUT) {
            btm_ble_set_conn_st(BLE_CONN_IDLE);



        } else {




        }

    }

    BOOLEAN bg_con = btm_ble_update_mode_operation(role, bda, status);
    if (status != HCI_SUCCESS && !bg_con) {

        l2c_link_hci_disc_comp (handle, status);


        btm_sec_disconnected (handle, status);

    }
}
