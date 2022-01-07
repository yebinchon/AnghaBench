
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBT_TRANSPORT ;
typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_6__ {scalar_t__ transport; int hci_handle; } ;
typedef TYPE_2__ tACL_CONN ;
struct TYPE_5__ {int tx_power_timer; int * p_tx_power_cmpl_cb; int read_tx_pwr_addr; } ;
struct TYPE_7__ {TYPE_1__ devcb; } ;
typedef int BOOLEAN ;
typedef int * BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_BUSY ;
 int BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 int BTM_NO_RESOURCES ;
 int BTM_READ_RSSI_TYPE_CUR ;
 int BTM_TRACE_API (char*,int ,int ,int ,int ,int ,int ) ;
 int BTM_UNKNOWN_ADDR ;
 int BTU_TTYPE_BTM_ACL ;
 scalar_t__ BT_TRANSPORT_LE ;
 TYPE_2__* btm_bda_to_acl (int *,int ) ;
 TYPE_3__ btm_cb ;
 int btsnd_hcic_ble_read_adv_chnl_tx_power () ;
 int btsnd_hcic_read_tx_power (int ,int ) ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int memcpy (int ,int *,int ) ;

tBTM_STATUS BTM_ReadTxPower (BD_ADDR remote_bda, tBT_TRANSPORT transport, tBTM_CMPL_CB *p_cb)
{
    tACL_CONN *p;
    BOOLEAN ret;



    BTM_TRACE_API ("BTM_ReadTxPower: RemBdAddr: %02x%02x%02x%02x%02x%02x\n",
                   remote_bda[0], remote_bda[1], remote_bda[2],
                   remote_bda[3], remote_bda[4], remote_bda[5]);


    if (btm_cb.devcb.p_tx_power_cmpl_cb) {
        return (BTM_BUSY);
    }

    p = btm_bda_to_acl(remote_bda, transport);
    if (p != (tACL_CONN *)((void*)0)) {
        btu_start_timer (&btm_cb.devcb.tx_power_timer, BTU_TTYPE_BTM_ACL,
                         BTM_DEV_REPLY_TIMEOUT);

        btm_cb.devcb.p_tx_power_cmpl_cb = p_cb;


        if (p->transport == BT_TRANSPORT_LE) {
            memcpy(btm_cb.devcb.read_tx_pwr_addr, remote_bda, BD_ADDR_LEN);
            ret = btsnd_hcic_ble_read_adv_chnl_tx_power();
        } else

        {
            ret = btsnd_hcic_read_tx_power (p->hci_handle, 0x00);
        }
        if (!ret) {
            btm_cb.devcb.p_tx_power_cmpl_cb = ((void*)0);
            btu_stop_timer (&btm_cb.devcb.tx_power_timer);
            return (BTM_NO_RESOURCES);
        } else {
            return (BTM_CMD_STARTED);
        }
    }


    return (BTM_UNKNOWN_ADDR);
}
