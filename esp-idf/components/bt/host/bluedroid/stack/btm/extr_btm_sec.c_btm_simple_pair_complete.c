
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBTM_SP_EVT_DATA ;
struct TYPE_8__ {int* bd_addr; int* dev_class; int status; } ;
typedef TYPE_2__ tBTM_SP_COMPLT ;
struct TYPE_9__ {scalar_t__ sec_state; int hci_handle; int dev_class; int bd_addr; int sec_flags; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
typedef scalar_t__ UINT8 ;
struct TYPE_7__ {int (* p_sp_callback ) (int ,int *) ;} ;
struct TYPE_10__ {TYPE_1__ api; int pairing_tle; int pairing_bda; int pairing_state; } ;
typedef scalar_t__ BOOLEAN ;


 int BD_ADDR_LEN ;
 int BTM_ERR_PROCESSING ;
 int BTM_PAIR_STATE_WAIT_DISCONNECT ;
 int BTM_SEC_AUTHENTICATED ;
 scalar_t__ BTM_SEC_STATE_AUTHENTICATING ;
 int BTM_SP_COMPLT_EVT ;
 int BTM_SUCCESS ;
 int BTM_TRACE_ERROR (char*,int,int) ;
 int BTM_TRACE_EVENT (char*,int ,scalar_t__,scalar_t__) ;
 int BTU_TTYPE_USER_FUNC ;
 int BT_1SEC_TIMEOUT ;
 int DEV_CLASS_LEN ;
 scalar_t__ FALSE ;
 int HCI_ERR_AUTH_FAILURE ;
 scalar_t__ HCI_ERR_CONN_CAUSE_LOCAL_HOST ;
 scalar_t__ HCI_ERR_PAIRING_NOT_ALLOWED ;
 scalar_t__ HCI_ERR_PEER_USER ;
 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_BDADDR (int*,scalar_t__*) ;
 scalar_t__ TRUE ;
 TYPE_6__ btm_cb ;
 TYPE_3__* btm_find_dev (int*) ;
 int btm_pair_state_descr (int ) ;
 int btm_sec_change_pairing_state (int ) ;
 int btm_sec_send_hci_disconnect (TYPE_3__*,int ,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 scalar_t__ memcmp (int ,int*,int ) ;
 int memcpy (int*,int ,int ) ;
 int stub1 (int ,int *) ;

void btm_simple_pair_complete (UINT8 *p)
{
    tBTM_SP_COMPLT evt_data;
    tBTM_SEC_DEV_REC *p_dev_rec;
    UINT8 status;
    BOOLEAN disc = FALSE;

    status = *p++;
    STREAM_TO_BDADDR (evt_data.bd_addr, p);

    if ((p_dev_rec = btm_find_dev (evt_data.bd_addr)) == ((void*)0)) {
        BTM_TRACE_ERROR ("btm_simple_pair_complete() with unknown BDA: %08x%04x\n",
                         (evt_data.bd_addr[0] << 24) + (evt_data.bd_addr[1] << 16) + (evt_data.bd_addr[2] << 8) + evt_data.bd_addr[3],
                         (evt_data.bd_addr[4] << 8) + evt_data.bd_addr[5]);
        return;
    }

    BTM_TRACE_EVENT ("btm_simple_pair_complete()  Pair State: %s  Status:%d  sec_state: %u\n",
                     btm_pair_state_descr(btm_cb.pairing_state), status, p_dev_rec->sec_state);

    evt_data.status = BTM_ERR_PROCESSING;
    if (status == HCI_SUCCESS) {
        evt_data.status = BTM_SUCCESS;
        p_dev_rec->sec_flags |= BTM_SEC_AUTHENTICATED;
    } else {
        if (status == HCI_ERR_PAIRING_NOT_ALLOWED) {

            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_DISCONNECT);


            btu_start_timer (&btm_cb.pairing_tle, BTU_TTYPE_USER_FUNC, BT_1SEC_TIMEOUT);
        } else if (memcmp (btm_cb.pairing_bda, evt_data.bd_addr, BD_ADDR_LEN) == 0) {

            btu_stop_timer (&btm_cb.pairing_tle);

            if (p_dev_rec->sec_state != BTM_SEC_STATE_AUTHENTICATING) {

                disc = TRUE;
            }
        } else {
            disc = TRUE;
        }
    }


    memcpy (evt_data.bd_addr, p_dev_rec->bd_addr, BD_ADDR_LEN);
    memcpy (evt_data.dev_class, p_dev_rec->dev_class, DEV_CLASS_LEN);

    if (btm_cb.api.p_sp_callback) {
        (*btm_cb.api.p_sp_callback) (BTM_SP_COMPLT_EVT, (tBTM_SP_EVT_DATA *)&evt_data);
    }

    if (disc) {


        if ((status != HCI_ERR_PEER_USER) && (status != HCI_ERR_CONN_CAUSE_LOCAL_HOST)) {
            btm_sec_send_hci_disconnect (p_dev_rec, HCI_ERR_AUTH_FAILURE, p_dev_rec->hci_handle);
        }
    }
}
