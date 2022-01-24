#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tBTM_STATUS ;
struct TYPE_13__ {int* bd_addr; int* dev_class; scalar_t__ num_val; scalar_t__ just_works; int loc_auth_req; int rmt_auth_req; int /*<<< orphan*/  rmt_io_caps; int /*<<< orphan*/  loc_io_caps; scalar_t__ bd_name; } ;
struct TYPE_11__ {scalar_t__ passkey; } ;
struct TYPE_14__ {TYPE_4__ cfm_req; TYPE_2__ key_notif; } ;
typedef  TYPE_5__ tBTM_SP_EVT_DATA ;
typedef  int const tBTM_SP_EVT ;
struct TYPE_15__ {int rmt_auth_req; int /*<<< orphan*/  hci_handle; int /*<<< orphan*/  rmt_io_caps; scalar_t__ sec_bd_name; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_6__ tBTM_SEC_DEV_REC ;
typedef  int UINT8 ;
struct TYPE_12__ {scalar_t__ (* p_sp_callback ) (int const,TYPE_5__*) ;} ;
struct TYPE_10__ {int loc_auth_req; int /*<<< orphan*/  loc_io_caps; } ;
struct TYPE_16__ {scalar_t__ pairing_state; int /*<<< orphan*/  acl_disc_reason; TYPE_3__ api; TYPE_1__ devcb; int /*<<< orphan*/  pairing_bda; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int BTM_AUTH_SP_YES ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*) ; 
 scalar_t__ BTM_ERR_PROCESSING ; 
 int /*<<< orphan*/  BTM_IO_CAP_IO ; 
 int /*<<< orphan*/  BTM_MAX_REM_BD_NAME_LEN ; 
 scalar_t__ BTM_NOT_AUTHORIZED ; 
 scalar_t__ BTM_PAIR_STATE_IDLE ; 
 int /*<<< orphan*/  BTM_PAIR_STATE_KEY_ENTRY ; 
 int /*<<< orphan*/  BTM_PAIR_STATE_WAIT_AUTH_COMPLETE ; 
 int /*<<< orphan*/  BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
#define  BTM_SP_CFM_REQ_EVT 130 
#define  BTM_SP_KEY_NOTIF_EVT 129 
#define  BTM_SP_KEY_REQ_EVT 128 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DEV_CLASS_LEN ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HCI_ERR_AUTH_FAILURE ; 
 int /*<<< orphan*/  HCI_ERR_HOST_REJECT_SECURITY ; 
 int /*<<< orphan*/  FUNC5 (int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int*) ; 
 scalar_t__ TRUE ; 
 TYPE_9__ btm_cb ; 
 TYPE_6__* FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int const,TYPE_5__*) ; 

void FUNC16 (tBTM_SP_EVT event, UINT8 *p)
{
    tBTM_STATUS status = BTM_ERR_PROCESSING;
    tBTM_SP_EVT_DATA evt_data;
    UINT8               *p_bda = evt_data.cfm_req.bd_addr;
    tBTM_SEC_DEV_REC *p_dev_rec;

    /* All events start with bd_addr */
    FUNC5 (p_bda, p);
#if (BT_USE_TRACES == TRUE && SMP_INCLUDED == TRUE)
    FUNC4 ("btm_proc_sp_req_evt() BDA: %08x%04x event: 0x%x, State: %s\n",
                     (p_bda[0] << 24) + (p_bda[1] << 16) + (p_bda[2] << 8) + p_bda[3], (p_bda[4] << 8) + p_bda[5],
                     event, FUNC8(btm_cb.pairing_state));
#endif  ///BT_USE_TRACES == TRUE && SMP_INCLUDED == TRUE
    if ( ((p_dev_rec = FUNC7 (p_bda)) != NULL)
            &&  (btm_cb.pairing_state != BTM_PAIR_STATE_IDLE)
            &&  (FUNC13 (btm_cb.pairing_bda, p_bda, BD_ADDR_LEN) == 0) ) {
        FUNC14 (evt_data.cfm_req.bd_addr, p_dev_rec->bd_addr, BD_ADDR_LEN);
        FUNC14 (evt_data.cfm_req.dev_class, p_dev_rec->dev_class, DEV_CLASS_LEN);

        FUNC0 ((char *)evt_data.cfm_req.bd_name, sizeof(evt_data.cfm_req.bd_name), (char *)p_dev_rec->sec_bd_name, BTM_MAX_REM_BD_NAME_LEN);

        switch (event) {
        case BTM_SP_CFM_REQ_EVT:
            /* Numeric confirmation. Need user to conf the passkey */
            FUNC9 (BTM_PAIR_STATE_WAIT_NUMERIC_CONFIRM);

            /* The device record must be allocated in the "IO cap exchange" step */
            FUNC6 (evt_data.cfm_req.num_val, p);

            evt_data.cfm_req.just_works = TRUE;

            /* process user confirm req in association with the auth_req param */
// #if (BTM_LOCAL_IO_CAPS == BTM_IO_CAP_IO)
            if ( (p_dev_rec->rmt_io_caps == BTM_IO_CAP_IO)
                    &&  (btm_cb.devcb.loc_io_caps == BTM_IO_CAP_IO)
                    &&  ((p_dev_rec->rmt_auth_req & BTM_AUTH_SP_YES) || (btm_cb.devcb.loc_auth_req & BTM_AUTH_SP_YES)) ) {
                /* Both devices are DisplayYesNo and one or both devices want to authenticate
                   -> use authenticated link key */
                evt_data.cfm_req.just_works = FALSE;
            }
// #endif
            FUNC3 ("btm_proc_sp_req_evt()  just_works:%d, io loc:%d, rmt:%d, auth loc:%d, rmt:%d\n",
                             evt_data.cfm_req.just_works, btm_cb.devcb.loc_io_caps, p_dev_rec->rmt_io_caps,
                             btm_cb.devcb.loc_auth_req, p_dev_rec->rmt_auth_req);

            evt_data.cfm_req.loc_auth_req   = btm_cb.devcb.loc_auth_req;
            evt_data.cfm_req.rmt_auth_req   = p_dev_rec->rmt_auth_req;
            evt_data.cfm_req.loc_io_caps    = btm_cb.devcb.loc_io_caps;
            evt_data.cfm_req.rmt_io_caps    = p_dev_rec->rmt_io_caps;
            break;

        case BTM_SP_KEY_NOTIF_EVT:
            /* Passkey notification (other side is a keyboard) */
            FUNC6 (evt_data.key_notif.passkey, p);

            FUNC3 ("BTM_SP_KEY_NOTIF_EVT:  passkey: %u\n", evt_data.key_notif.passkey);

            FUNC9 (BTM_PAIR_STATE_WAIT_AUTH_COMPLETE);
            break;

#if (BT_SSP_INCLUDED == TRUE)
        case BTM_SP_KEY_REQ_EVT:
            /* HCI_USER_PASSKEY_REQUEST_EVT */
            FUNC9 (BTM_PAIR_STATE_KEY_ENTRY);
            break;
#endif
        }

        if (btm_cb.api.p_sp_callback) {
            status = (*btm_cb.api.p_sp_callback) (event, (tBTM_SP_EVT_DATA *)&evt_data);
            if (status != BTM_NOT_AUTHORIZED) {
                return;
            }
            /* else BTM_NOT_AUTHORIZED means when the app wants to reject the req right now */
        } else if ( (event == BTM_SP_CFM_REQ_EVT) && (evt_data.cfm_req.just_works == TRUE) ) {
            /* automatically reply with just works if no sp_cback */
            status = BTM_SUCCESS;
        }

        if (event == BTM_SP_CFM_REQ_EVT) {
            FUNC3 ("calling BTM_ConfirmReqReply with status: %d\n", status);
            FUNC1 (status, p_bda);
        }
#if (BT_SSP_INCLUDED == TRUE)
        else if (event == BTM_SP_KEY_REQ_EVT) {
            FUNC2(status, p_bda, 0);
        }
#endif
        return;
    }
    /* Something bad. we can only fail this connection */
    btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;

    if (BTM_SP_CFM_REQ_EVT == event) {
        FUNC11 (p_bda, FALSE);
    } else if (BTM_SP_KEY_NOTIF_EVT == event) {
        /* do nothing -> it very unlikely to happen.
        This event is most likely to be received by a HID host when it first connects to a HID device.
        Usually the Host initiated the connection in this case.
        On Mobile platforms, if there's a security process happening,
        the host probably can not initiate another connection.
        BTW (PC) is another story.  */
        if (NULL != (p_dev_rec = FUNC7 (p_bda)) ) {
            FUNC10 (p_dev_rec->hci_handle, HCI_ERR_AUTH_FAILURE);
        }
    }

#if (BT_SSP_INCLUDED == TRUE)
    else {
        FUNC12(p_bda);
    }
#endif
}