
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* status; } ;
typedef TYPE_2__ tBTM_TX_POWER_RESULTS ;
typedef void* tBTM_STATUS ;
typedef int (* tBTM_CMPL_CB ) (TYPE_2__*) ;
struct TYPE_8__ {int tx_power_timer; int (* p_tx_power_cmpl_cb ) (TYPE_2__*) ;} ;
struct TYPE_10__ {TYPE_1__ devcb; } ;
typedef int BOOLEAN ;


 void* BTM_BUSY ;
 void* BTM_CMD_STARTED ;
 int BTM_DEV_REPLY_TIMEOUT ;
 void* BTM_NO_RESOURCES ;
 int BTU_TTYPE_BTM_ACL ;
 TYPE_6__ btm_cb ;
 int btsnd_hcic_ble_read_adv_chnl_tx_power () ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*) ;

tBTM_STATUS BTM_BleReadAdvTxPower(tBTM_CMPL_CB *p_cb)
{
    BOOLEAN ret;
    tBTM_TX_POWER_RESULTS result;

    if (btm_cb.devcb.p_tx_power_cmpl_cb) {
        result.status = BTM_BUSY;
        (*p_cb)(&result);
        return (BTM_BUSY);
    }

    btm_cb.devcb.p_tx_power_cmpl_cb = p_cb;
    btu_start_timer (&btm_cb.devcb.tx_power_timer, BTU_TTYPE_BTM_ACL,
                         BTM_DEV_REPLY_TIMEOUT);
    ret = btsnd_hcic_ble_read_adv_chnl_tx_power();

    if(!ret) {
        btm_cb.devcb.p_tx_power_cmpl_cb = ((void*)0);
        btu_stop_timer (&btm_cb.devcb.tx_power_timer);
        result.status = BTM_NO_RESOURCES;
        (*p_cb)(&result);
        return (BTM_NO_RESOURCES);
    } else {
        return BTM_CMD_STARTED;
    }
}
