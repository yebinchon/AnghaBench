#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_17__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int tBTM_STATUS ;
typedef  int /*<<< orphan*/  tBTM_SP_KEYPRESS ;
struct TYPE_25__ {int /*<<< orphan*/  upgrade; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_24__ {int /*<<< orphan*/  bd_addr; int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  dev_class; } ;
struct TYPE_22__ {int status; int /*<<< orphan*/  r; int /*<<< orphan*/  c; } ;
struct TYPE_18__ {int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  passkey; } ;
struct TYPE_29__ {int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  rmt_io_caps; int /*<<< orphan*/  loc_io_caps; int /*<<< orphan*/  rmt_auth_req; int /*<<< orphan*/  loc_auth_req; int /*<<< orphan*/  just_works; } ;
struct TYPE_27__ {int /*<<< orphan*/  auth_req; int /*<<< orphan*/  oob_data; int /*<<< orphan*/  io_cap; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_26__ {int /*<<< orphan*/  oob_data; int /*<<< orphan*/  auth_req; int /*<<< orphan*/  is_orig; int /*<<< orphan*/  io_cap; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_19__ {TYPE_4__ upgrade; int /*<<< orphan*/  key_press; TYPE_3__ rmt_oob; TYPE_1__ loc_oob; TYPE_10__ key_notif; TYPE_8__ cfm_req; TYPE_6__ io_rsp; TYPE_5__ io_req; } ;
typedef  TYPE_11__ tBTM_SP_EVT_DATA ;
typedef  int tBTM_SP_EVT ;
typedef  void* tBTA_DM_SEC_EVT ;
struct TYPE_23__ {int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bd_addr; } ;
struct TYPE_30__ {int /*<<< orphan*/ * bd_name; int /*<<< orphan*/  dev_class; int /*<<< orphan*/  bd_addr; int /*<<< orphan*/  passkey; } ;
struct TYPE_28__ {int /*<<< orphan*/  rmt_io_caps; int /*<<< orphan*/  loc_io_caps; int /*<<< orphan*/  rmt_auth_req; int /*<<< orphan*/  loc_auth_req; int /*<<< orphan*/  just_works; } ;
struct TYPE_20__ {int /*<<< orphan*/  key_press; TYPE_2__ rmt_oob; TYPE_9__ key_notif; TYPE_7__ cfm_req; } ;
typedef  TYPE_12__ tBTA_DM_SEC ;
typedef  int UINT8 ;
struct TYPE_21__ {void* pin_evt; int /*<<< orphan*/  (* p_sec_cback ) (void*,TYPE_12__*) ;int /*<<< orphan*/  pin_dev_class; int /*<<< orphan*/  pin_bd_addr; int /*<<< orphan*/  num_val; int /*<<< orphan*/  just_works; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BD_NAME_LEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* BTA_DM_SP_CFM_REQ_EVT ; 
 void* BTA_DM_SP_KEYPRESS_EVT ; 
 void* BTA_DM_SP_KEY_NOTIF_EVT ; 
 void* BTA_DM_SP_KEY_REQ_EVT ; 
 void* BTA_DM_SP_RMT_OOB_EVT ; 
 int BTM_CMD_STARTED ; 
 int BTM_NOT_AUTHORIZED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  BTM_SP_CFM_REQ_EVT 137 
#define  BTM_SP_COMPLT_EVT 136 
#define  BTM_SP_IO_REQ_EVT 135 
#define  BTM_SP_IO_RSP_EVT 134 
#define  BTM_SP_KEYPRESS_EVT 133 
#define  BTM_SP_KEY_NOTIF_EVT 132 
#define  BTM_SP_KEY_REQ_EVT 131 
#define  BTM_SP_LOC_OOB_EVT 130 
#define  BTM_SP_RMT_OOB_EVT 129 
#define  BTM_SP_UPGRADE_EVT 128 
 int BTM_SUCCESS ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_17__ bta_dm_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bta_dm_pinname_cback ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (void*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC13 (void*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC14 (void*,TYPE_12__*) ; 

__attribute__((used)) static UINT8 FUNC15 (tBTM_SP_EVT event, tBTM_SP_EVT_DATA *p_data)
{
    tBTM_STATUS status = BTM_CMD_STARTED;
    tBTA_DM_SEC sec_event;
    tBTA_DM_SEC_EVT pin_evt = BTA_DM_SP_KEY_NOTIF_EVT;

    FUNC0("bta_dm_sp_cback: %d", event);
    if (!bta_dm_cb.p_sec_cback) {
        return BTM_NOT_AUTHORIZED;
    }

    /* TODO_SP */
    switch (event) {
    case BTM_SP_IO_REQ_EVT:
#if (BT_SSP_INCLUDED == TRUE)
        /* translate auth_req */
        FUNC6(p_data->io_req.bd_addr, &p_data->io_req.io_cap,
                         &p_data->io_req.oob_data, &p_data->io_req.auth_req, p_data->io_req.is_orig);
#endif
#if BTM_OOB_INCLUDED == FALSE
        status = BTM_SUCCESS;
#endif

        FUNC0("io mitm: %d oob_data:%d", p_data->io_req.auth_req, p_data->io_req.oob_data);
        break;
    case BTM_SP_IO_RSP_EVT:
#if (BT_SSP_INCLUDED == TRUE)
        FUNC7(p_data->io_rsp.bd_addr, p_data->io_rsp.io_cap,
                         p_data->io_rsp.oob_data, p_data->io_rsp.auth_req );
#endif
        break;

    case BTM_SP_CFM_REQ_EVT:
        pin_evt = BTA_DM_SP_CFM_REQ_EVT;
        bta_dm_cb.just_works = sec_event.cfm_req.just_works = p_data->cfm_req.just_works;
        sec_event.cfm_req.loc_auth_req = p_data->cfm_req.loc_auth_req;
        sec_event.cfm_req.rmt_auth_req = p_data->cfm_req.rmt_auth_req;
        sec_event.cfm_req.loc_io_caps = p_data->cfm_req.loc_io_caps;
        sec_event.cfm_req.rmt_io_caps = p_data->cfm_req.rmt_io_caps;

        /* continue to next case */
#if (BT_SSP_INCLUDED == TRUE)
    /* Passkey entry mode, mobile device with output capability is very
        unlikely to receive key request, so skip this event */
    case BTM_SP_KEY_REQ_EVT:
    case BTM_SP_KEY_NOTIF_EVT:
#endif
        if (BTM_SP_CFM_REQ_EVT == event) {
            /* Due to the switch case falling through below to BTM_SP_KEY_NOTIF_EVT,
               call remote name request using values from cfm_req */
            if (p_data->cfm_req.bd_name[0] == 0) {
                bta_dm_cb.pin_evt = pin_evt;
                FUNC5(bta_dm_cb.pin_bd_addr, p_data->cfm_req.bd_addr);
                FUNC3(bta_dm_cb.pin_dev_class, p_data->cfm_req.dev_class);
                if ((FUNC4(p_data->cfm_req.bd_addr, bta_dm_pinname_cback,
                                              BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                    return BTM_CMD_STARTED;
                }
                FUNC1(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
            } else {
                /* Due to the switch case falling through below to BTM_SP_KEY_NOTIF_EVT,
                   copy these values into key_notif from cfm_req */
                FUNC5(sec_event.key_notif.bd_addr, p_data->cfm_req.bd_addr);
                FUNC3(sec_event.key_notif.dev_class, p_data->cfm_req.dev_class);
                FUNC2((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME),
                              (char *)p_data->cfm_req.bd_name, (BD_NAME_LEN - 1));
                sec_event.key_notif.bd_name[BD_NAME_LEN - 1] = 0;
            }
        }

        bta_dm_cb.num_val = sec_event.key_notif.passkey = p_data->key_notif.passkey;
        if (BTM_SP_KEY_NOTIF_EVT == event) {
            /* If the device name is not known, save bdaddr and devclass
               and initiate a name request with values from key_notif */
            if (p_data->key_notif.bd_name[0] == 0) {
                bta_dm_cb.pin_evt = pin_evt;
                FUNC5(bta_dm_cb.pin_bd_addr, p_data->key_notif.bd_addr);
                FUNC3(bta_dm_cb.pin_dev_class, p_data->key_notif.dev_class);
                if ((FUNC4(p_data->key_notif.bd_addr, bta_dm_pinname_cback,
                                              BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                    return BTM_CMD_STARTED;
                }
                FUNC1(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
            } else {
                FUNC5(sec_event.key_notif.bd_addr, p_data->key_notif.bd_addr);
                FUNC3(sec_event.key_notif.dev_class, p_data->key_notif.dev_class);
                FUNC2((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME),
                              (char *)p_data->key_notif.bd_name, (BD_NAME_LEN - 1));
                sec_event.key_notif.bd_name[BD_NAME_LEN - 1] = 0;
            }
        }

        if (BTM_SP_KEY_REQ_EVT == event) {
            pin_evt = BTA_DM_SP_KEY_REQ_EVT;
            /* If the device name is not known, save bdaddr and devclass
               and initiate a name request with values from key_notif */
            if (p_data->key_notif.bd_name[0] == 0) {
                bta_dm_cb.pin_evt = pin_evt;
                FUNC5(bta_dm_cb.pin_bd_addr, p_data->key_notif.bd_addr);
                FUNC3(bta_dm_cb.pin_dev_class, p_data->key_notif.dev_class);
                if ((FUNC4(p_data->key_notif.bd_addr, bta_dm_pinname_cback,
                                              BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                    return BTM_CMD_STARTED;
                }
                FUNC1(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
            } else {
                FUNC5(sec_event.key_notif.bd_addr, p_data->key_notif.bd_addr);
                FUNC3(sec_event.key_notif.dev_class, p_data->key_notif.dev_class);
                FUNC2((char *)sec_event.key_notif.bd_name, sizeof(BD_NAME),
                              (char *)p_data->key_notif.bd_name, (BD_NAME_LEN - 1));
                sec_event.key_notif.bd_name[BD_NAME_LEN - 1] = 0;
            }
        }
        bta_dm_cb.p_sec_cback(pin_evt, &sec_event);

        break;

#if BTM_OOB_INCLUDED == TRUE
    case BTM_SP_LOC_OOB_EVT:
        FUNC9((BOOLEAN)(p_data->loc_oob.status == BTM_SUCCESS),
                          p_data->loc_oob.c, p_data->loc_oob.r);
        break;

    case BTM_SP_RMT_OOB_EVT:
        /* If the device name is not known, save bdaddr and devclass and initiate a name request */
        if (p_data->rmt_oob.bd_name[0] == 0) {
            bta_dm_cb.pin_evt = BTA_DM_SP_RMT_OOB_EVT;
            FUNC5(bta_dm_cb.pin_bd_addr, p_data->rmt_oob.bd_addr);
            FUNC3(bta_dm_cb.pin_dev_class, p_data->rmt_oob.dev_class);
            if ((FUNC4(p_data->rmt_oob.bd_addr, bta_dm_pinname_cback,
                                          BT_TRANSPORT_BR_EDR)) == BTM_CMD_STARTED) {
                return BTM_CMD_STARTED;
            }
            FUNC1(" bta_dm_sp_cback() -> Failed to start Remote Name Request  ");
        }

        FUNC5(sec_event.rmt_oob.bd_addr, p_data->rmt_oob.bd_addr);
        FUNC3(sec_event.rmt_oob.dev_class, p_data->rmt_oob.dev_class);
        FUNC2((char *)sec_event.rmt_oob.bd_name, sizeof(BD_NAME), (char *)p_data->rmt_oob.bd_name, (BD_NAME_LEN - 1));
        sec_event.rmt_oob.bd_name[BD_NAME_LEN - 1] = 0;

        bta_dm_cb.p_sec_cback(BTA_DM_SP_RMT_OOB_EVT, &sec_event);

        FUNC10(p_data->rmt_oob.bd_addr);
        break;
#endif
    case BTM_SP_COMPLT_EVT:
        /* do not report this event - handled by link_key_callback or auth_complete_callback */
        break;

    case BTM_SP_KEYPRESS_EVT:
        FUNC11(&sec_event.key_press, &p_data->key_press, sizeof(tBTM_SP_KEYPRESS));
        bta_dm_cb.p_sec_cback(BTA_DM_SP_KEYPRESS_EVT, &sec_event);
        break;

    case BTM_SP_UPGRADE_EVT:
        FUNC8(p_data->upgrade.bd_addr, &p_data->upgrade.upgrade );
        break;

    default:
        status = BTM_NOT_AUTHORIZED;
        break;
    }
    FUNC0("dm status: %d", status);
    return status;
}