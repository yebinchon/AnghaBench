
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__* bd_name; int * dev_class; int * bd_addr; } ;
typedef TYPE_2__ tBTM_SP_RMT_OOB ;
typedef int tBTM_SP_EVT_DATA ;
struct TYPE_8__ {scalar_t__ sec_bd_name; int dev_class; int bd_addr; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
struct TYPE_6__ {scalar_t__ (* p_sp_callback ) (int ,int *) ;} ;
struct TYPE_9__ {int acl_disc_reason; TYPE_1__ api; } ;
typedef int BT_OCTET16 ;


 int BCM_STRNCPY_S (char*,int,char*,int) ;
 int BD_ADDR_LEN ;
 int BTM_MAX_REM_BD_NAME_LEN ;
 scalar_t__ BTM_NOT_AUTHORIZED ;
 int BTM_PAIR_STATE_WAIT_LOCAL_OOB_RSP ;
 int BTM_RemoteOobDataReply (int ,int *,int ,int ) ;
 int BTM_SP_RMT_OOB_EVT ;
 int BTM_TRACE_EVENT (char*,int ,int ,int ,int ,int ,int ) ;
 int DEV_CLASS_LEN ;
 int HCI_ERR_HOST_REJECT_SECURITY ;
 int STREAM_TO_BDADDR (int *,int *) ;
 int TRUE ;
 TYPE_5__ btm_cb ;
 TYPE_3__* btm_find_dev (int *) ;
 int btm_sec_change_pairing_state (int ) ;
 int btsnd_hcic_rem_oob_neg_reply (int *) ;
 int memcpy (int *,int ,int ) ;
 scalar_t__ stub1 (int ,int *) ;

void btm_rem_oob_req (UINT8 *p)
{
    UINT8 *p_bda;
    tBTM_SP_RMT_OOB evt_data;
    tBTM_SEC_DEV_REC *p_dev_rec;
    BT_OCTET16 c;
    BT_OCTET16 r;

    p_bda = evt_data.bd_addr;

    STREAM_TO_BDADDR (p_bda, p);

    BTM_TRACE_EVENT ("btm_rem_oob_req() BDA: %02x:%02x:%02x:%02x:%02x:%02x\n",
                     p_bda[0], p_bda[1], p_bda[2], p_bda[3], p_bda[4], p_bda[5]);

    if ( (((void*)0) != (p_dev_rec = btm_find_dev (p_bda))) &&
            btm_cb.api.p_sp_callback) {
        memcpy (evt_data.bd_addr, p_dev_rec->bd_addr, BD_ADDR_LEN);
        memcpy (evt_data.dev_class, p_dev_rec->dev_class, DEV_CLASS_LEN);
        BCM_STRNCPY_S((char *)evt_data.bd_name, sizeof(evt_data.bd_name), (char *)p_dev_rec->sec_bd_name, BTM_MAX_REM_BD_NAME_LEN + 1);
        evt_data.bd_name[BTM_MAX_REM_BD_NAME_LEN] = 0;

        btm_sec_change_pairing_state(BTM_PAIR_STATE_WAIT_LOCAL_OOB_RSP);
        if ((*btm_cb.api.p_sp_callback) (BTM_SP_RMT_OOB_EVT, (tBTM_SP_EVT_DATA *)&evt_data) == BTM_NOT_AUTHORIZED) {
            BTM_RemoteOobDataReply(TRUE, p_bda, c, r);
        }
        return;
    }


    btm_cb.acl_disc_reason = HCI_ERR_HOST_REJECT_SECURITY;
    btsnd_hcic_rem_oob_neg_reply (p_bda);
}
