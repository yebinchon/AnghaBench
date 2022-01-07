
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ tBTM_STATUS ;
struct TYPE_14__ {int sec_flags; int rs_disc_pending; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
struct TYPE_15__ {int mode; } ;
typedef TYPE_4__ tBTM_PM_PWR_MD ;
typedef scalar_t__ tBTM_PM_MODE ;
typedef int tBTM_CMPL_CB ;
struct TYPE_16__ {scalar_t__ link_role; scalar_t__ switch_role_state; scalar_t__ encrypt_state; int hci_handle; int remote_addr; } ;
typedef TYPE_5__ tACL_CONN ;
typedef int settings ;
typedef scalar_t__ UINT8 ;
struct TYPE_12__ {int hci_status; scalar_t__ role; int * remote_bd_addr; } ;
struct TYPE_13__ {int * p_switch_role_cb; TYPE_1__ switch_role_ref_data; } ;
struct TYPE_18__ {TYPE_2__ devcb; } ;
struct TYPE_17__ {int (* supports_master_slave_role_switch ) () ;} ;
typedef scalar_t__ BOOLEAN ;
typedef int * BD_ADDR_PTR ;
typedef int * BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF ;
 scalar_t__ BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF ;
 scalar_t__ BTM_ACL_SWKEY_STATE_IDLE ;
 scalar_t__ BTM_ACL_SWKEY_STATE_IN_PROGRESS ;
 scalar_t__ BTM_ACL_SWKEY_STATE_MODE_CHANGE ;
 scalar_t__ BTM_BUSY ;
 scalar_t__ BTM_CMD_STARTED ;
 int BTM_EPR_AVAILABLE (TYPE_5__*) ;
 scalar_t__ BTM_MODE_UNSUPPORTED ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_PM_MD_ACTIVE ;
 scalar_t__ BTM_PM_MD_PARK ;
 scalar_t__ BTM_PM_MD_SNIFF ;
 int BTM_PM_SET_ONLY_ID ;
 scalar_t__ BTM_ReadPowerMode (int ,scalar_t__*) ;
 int BTM_SEC_ENCRYPTED ;
 int BTM_SEC_RS_PENDING ;
 scalar_t__ BTM_SUCCESS ;
 scalar_t__ BTM_SetPowerMode (int ,int ,TYPE_4__*) ;
 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 int BTM_TRACE_DEBUG (char*,scalar_t__,...) ;
 scalar_t__ BTM_UNKNOWN_ADDR ;
 scalar_t__ BTM_WRONG_MODE ;
 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int HCI_ERR_UNSUPPORTED_VALUE ;
 scalar_t__ TRUE ;
 TYPE_5__* btm_bda_to_acl (int *,int ) ;
 TYPE_8__ btm_cb ;
 TYPE_3__* btm_find_dev (int *) ;
 scalar_t__ btm_is_sco_active_by_bdaddr (int *) ;
 int btsnd_hcic_set_conn_encrypt (int ,int ) ;
 int btsnd_hcic_switch_role (int *,scalar_t__) ;
 TYPE_6__* controller_get_interface () ;
 int memcpy (int *,int *,int ) ;
 int memset (void*,int ,int) ;
 int stub1 () ;

tBTM_STATUS BTM_SwitchRole (BD_ADDR remote_bd_addr, UINT8 new_role, tBTM_CMPL_CB *p_cb)
{
    tACL_CONN *p;
    tBTM_SEC_DEV_REC *p_dev_rec = ((void*)0);

    BOOLEAN is_sco_active;

    tBTM_STATUS status;
    tBTM_PM_MODE pwr_mode;
    tBTM_PM_PWR_MD settings;

    BD_ADDR_PTR p_bda;

    BTM_TRACE_API ("BTM_SwitchRole BDA: %02x-%02x-%02x-%02x-%02x-%02x\n",
                   remote_bd_addr[0], remote_bd_addr[1], remote_bd_addr[2],
                   remote_bd_addr[3], remote_bd_addr[4], remote_bd_addr[5]);


    if (!controller_get_interface()->supports_master_slave_role_switch()) {
        return (BTM_MODE_UNSUPPORTED);
    }

    if (btm_cb.devcb.p_switch_role_cb && p_cb) {

        p_bda = btm_cb.devcb.switch_role_ref_data.remote_bd_addr;
        BTM_TRACE_DEBUG ("Role switch on other device is in progress 0x%02x%02x%02x%02x%02x%02x\n",
                         p_bda[0], p_bda[1], p_bda[2],
                         p_bda[3], p_bda[4], p_bda[5]);

        return (BTM_BUSY);
    }

    if ((p = btm_bda_to_acl(remote_bd_addr, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {
        return (BTM_UNKNOWN_ADDR);
    }


    if (p->link_role == new_role) {
        return (BTM_SUCCESS);
    }



    is_sco_active = btm_is_sco_active_by_bdaddr(remote_bd_addr);

    if (is_sco_active == TRUE) {
        return (BTM_NO_RESOURCES);
    }



    if (p->switch_role_state != BTM_ACL_SWKEY_STATE_IDLE) {
        BTM_TRACE_DEBUG ("BTM_SwitchRole busy: %d\n",
                         p->switch_role_state);
        return (BTM_BUSY);
    }

    if ((status = BTM_ReadPowerMode(p->remote_addr, &pwr_mode)) != BTM_SUCCESS) {
        return (status);
    }


    if (pwr_mode == BTM_PM_MD_PARK || pwr_mode == BTM_PM_MD_SNIFF) {
        memset( (void *)&settings, 0, sizeof(settings));
        settings.mode = BTM_PM_MD_ACTIVE;
        status = BTM_SetPowerMode (BTM_PM_SET_ONLY_ID, p->remote_addr, &settings);
        if (status != BTM_CMD_STARTED) {
            return (BTM_WRONG_MODE);
        }

        p->switch_role_state = BTM_ACL_SWKEY_STATE_MODE_CHANGE;
    }

    else {
        p_dev_rec = btm_find_dev (remote_bd_addr);
        if ((p_dev_rec != ((void*)0))
                && ((p_dev_rec->sec_flags & BTM_SEC_ENCRYPTED) != 0)
                && !BTM_EPR_AVAILABLE(p)) {

            if (p->encrypt_state != BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF) {
                if (!btsnd_hcic_set_conn_encrypt (p->hci_handle, FALSE)) {
                    return (BTM_NO_RESOURCES);
                } else {
                    p->encrypt_state = BTM_ACL_ENCRYPT_STATE_ENCRYPT_OFF;
                }
            }

            p->switch_role_state = BTM_ACL_SWKEY_STATE_ENCRYPTION_OFF;
        } else {
            if (!btsnd_hcic_switch_role (remote_bd_addr, new_role)) {
                return (BTM_NO_RESOURCES);
            }

            p->switch_role_state = BTM_ACL_SWKEY_STATE_IN_PROGRESS;


            if (p_dev_rec) {
                p_dev_rec->rs_disc_pending = BTM_SEC_RS_PENDING;
            }

        }
    }


    if (p_cb) {
        memcpy (btm_cb.devcb.switch_role_ref_data.remote_bd_addr, remote_bd_addr,
                BD_ADDR_LEN);
        btm_cb.devcb.switch_role_ref_data.role = new_role;

        btm_cb.devcb.switch_role_ref_data.hci_status = HCI_ERR_UNSUPPORTED_VALUE;
        btm_cb.devcb.p_switch_role_cb = p_cb;
    }
    return (BTM_CMD_STARTED);
}
