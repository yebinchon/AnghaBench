
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_13__ {int* bd_addr; int* dev_class; scalar_t__ num_val; scalar_t__ just_works; int loc_auth_req; int rmt_auth_req; int rmt_io_caps; int loc_io_caps; scalar_t__ bd_name; } ;
struct TYPE_11__ {scalar_t__ passkey; } ;
struct TYPE_14__ {TYPE_4__ cfm_req; TYPE_2__ key_notif; } ;
typedef TYPE_5__ tBTM_SP_EVT_DATA ;
typedef int const tBTM_SP_EVT ;
struct TYPE_15__ {int rmt_auth_req; int hci_handle; int rmt_io_caps; scalar_t__ sec_bd_name; int dev_class; int bd_addr; } ;
typedef TYPE_6__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
struct TYPE_12__ {scalar_t__ (* p_sp_callback ) (int const,TYPE_5__*) ;} ;
struct TYPE_10__ {int loc_auth_req; int loc_io_caps; } ;
struct TYPE_16__ {scalar_t__ pairing_state; int acl_disc_reason; TYPE_3__ api; TYPE_1__ devcb; int pairing_bda; } ;


 int BCM_STRNCPY_S (char*,int,char*,int ) ;
 int BD_ADDR_LEN ;
 int BTM_AUTH_SP_YES ;
 int BTM_ConfirmReqReply (scalar_t__,int*) ;
 scalar_t__ BTM_ERR_PROCESSING ;
 int BTM_IO_CAP_IO ;
 int BTM_MAX_REM_BD_NAME_LEN ;
 scalar_t__ BTM_NOT_AUTHORIZED ;
 scalar_t__ BTM_PAIR_STATE_IDLE ;
 int BTM_PAIR_STATE_KEY_ENTRY ;
 int BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ;
 int BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM ;
 int BTM_PasskeyReqReply (scalar_t__,int*,int ) ;



 scalar_t__ BTM_SUCCESS ;
 int BTM_TRACE_DEBUG (char*,scalar_t__,...) ;
 int BTM_TRACE_EVENT (char*,int,int,int const,int ) ;
 int DEV_CLASS_LEN ;
 scalar_t__ FALSE ;
 int HCI_ERR_AUTH_FAILURE ;
 int HCI_ERR_HOST_REJECT_SECURITY ;
 int STREAM_TO_BDADDR (int*,int*) ;
 int STREAM_TO_UINT32 (scalar_t__,int*) ;
 scalar_t__ TRUE ;
 TYPE_9__ btm_cb ;
 TYPE_6__* btm_find_dev (int*) ;
 int btm_pair_state_descr (scalar_t__) ;
 int btm_sec_change_pairing_state (int ) ;
 int btm_sec_disconnect (int ,int ) ;
 int btsnd_hcic_user_conf_reply (int*,scalar_t__) ;
 int btsnd_hcic_user_passkey_neg_reply (int*) ;
 scalar_t__ memcmp (int ,int*,int ) ;
 int memcpy (int*,int ,int ) ;
 scalar_t__ stub1 (int const,TYPE_5__*) ;

void btm_proc_sp_req_evt (tBTM_SP_EVT event, UINT8 *p)
{
    tBTM_STATUS status = BTM_ERR_PROCESSING;
    tBTM_SP_EVT_DATA evt_data;
    UINT8 *p_bda = evt_data.cfm_req.bd_addr;
    tBTM_SEC_DEV_REC *p_dev_rec;


    STREAM_TO_BDADDR (p_bda, p);

    BTM_TRACE_EVENT ("btm_proc_sp_req_evt() BDA: %08x%04x event: 0x%x, State: %s\n",
                     (p_bda[0] << 24) + (p_bda[1] << 16) + (p_bda[2] << 8) + p_bda[3], (p_bda[4] << 8) + p_bda[5],
                     event, btm_pair_state_descr(btm_cb.pairing_state));

    if ( ((p_dev_rec = btm_find_dev (p_bda)) != ((void*)0))
            && (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE)
            && (memcmp (btm_cb.pairing_bda, p_bda, BD_ADDR_LEN) == 0) ) {
        memcpy (evt_data.cfm_req.bd_addr, p_dev_rec->bd_addr, BD_ADDR_LEN);
        memcpy (evt_data.cfm_req.dev_class, p_dev_rec->dev_class, DEV_CLASS_LEN);

        BCM_STRNCPY_S ((char *)evt_data.cfm_req.bd_name, sizeof(evt_data.cfm_req.bd_name), (char *)p_dev_rec->sec_bd_name, BTM_MAX_REM_BD_NAME_LEN);

        switch (event) {
        case 130:

            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM);


            STREAM_TO_UINT32 (evt_data.cfm_req.num_val, p);

            evt_data.cfm_req.just_works = TRUE;



            if ( (p_dev_rec->rmt_io_caps == BTM_IO_CAP_IO)
                    && (btm_cb.devcb.loc_io_caps == BTM_IO_CAP_IO)
                    && ((p_dev_rec->rmt_auth_req & BTM_AUTH_SP_YES) || (btm_cb.devcb.loc_auth_req & BTM_AUTH_SP_YES)) ) {


                evt_data.cfm_req.just_works = FALSE;
            }

            BTM_TRACE_DEBUG ("btm_proc_sp_req_evt()  just_works:%d, io loc:%d, rmt:%d, auth loc:%d, rmt:%d\n",
                             evt_data.cfm_req.just_works, btm_cb.devcb.loc_io_caps, p_dev_rec->rmt_io_caps,
                             btm_cb.devcb.loc_auth_req, p_dev_rec->rmt_auth_req);

            evt_data.cfm_req.loc_auth_req = btm_cb.devcb.loc_auth_req;
            evt_data.cfm_req.rmt_auth_req = p_dev_rec->rmt_auth_req;
            evt_data.cfm_req.loc_io_caps = btm_cb.devcb.loc_io_caps;
            evt_data.cfm_req.rmt_io_caps = p_dev_rec->rmt_io_caps;
            break;

        case 129:

            STREAM_TO_UINT32 (evt_data.key_notif.passkey, p);

            BTM_TRACE_DEBUG ("BTM_SP_KEY_NOTIF_EVT:  passkey: %u\n", evt_data.key_notif.passkey);

            btm_sec_change_pairing_state (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);
            break;


        case 128:

            btm_sec_change_pairing_state (BTM_PAIR_STATE_KEY_ENTRY);
            break;

        }

        if (btm_cb.api.p_sp_callback) {
            status = (*btm_cb.api.p_sp_callback) (event, (tBTM_SP_EVT_DATA *)&evt_data);
            if (status != BTM_NOT_AUTHORIZED) {
                return;
            }

        } else if ( (event == 130) && (evt_data.cfm_req.just_works == TRUE) ) {

            status = BTM_SUCCESS;
        }

        if (event == 130) {
            BTM_TRACE_DEBUG ("calling BTM_ConfirmReqReply with status: %d\n", status);
            BTM_ConfirmReqReply (status, p_bda);
        }

        else if (event == 128) {
            BTM_PasskeyReqReply(status, p_bda, 0);
        }

        return;
    }

    btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;

    if (130 == event) {
        btsnd_hcic_user_conf_reply (p_bda, FALSE);
    } else if (129 == event) {






        if (((void*)0) != (p_dev_rec = btm_find_dev (p_bda)) ) {
            btm_sec_disconnect (p_dev_rec->hci_handle, HCI_ERR_AUTH_FAILURE);
        }
    }


    else {
        btsnd_hcic_user_passkey_neg_reply(p_bda);
    }

}
