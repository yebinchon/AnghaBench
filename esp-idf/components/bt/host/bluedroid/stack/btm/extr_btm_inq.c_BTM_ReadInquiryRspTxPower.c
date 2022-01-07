
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_STATUS ;
typedef int tBTM_CMPL_CB ;
struct TYPE_3__ {int txpwer_timer; int * p_txpwer_cmpl_cb; } ;
struct TYPE_4__ {TYPE_1__ devcb; } ;


 int BTM_BUSY ;
 int BTM_CMD_STARTED ;
 int BTM_INQ_REPLY_TIMEOUT ;
 int BTM_NO_RESOURCES ;
 int BTU_TTYPE_BTM_ACL ;
 TYPE_2__ btm_cb ;
 int btsnd_hcic_read_inq_tx_power () ;
 int btu_start_timer (int *,int ,int ) ;
 int btu_stop_timer (int *) ;

tBTM_STATUS BTM_ReadInquiryRspTxPower (tBTM_CMPL_CB *p_cb)
{
    if (btm_cb.devcb.p_txpwer_cmpl_cb) {
        return (BTM_BUSY);
    }

    btu_start_timer (&btm_cb.devcb.txpwer_timer, BTU_TTYPE_BTM_ACL, BTM_INQ_REPLY_TIMEOUT );


    btm_cb.devcb.p_txpwer_cmpl_cb = p_cb;

    if (!btsnd_hcic_read_inq_tx_power ()) {
        btm_cb.devcb.p_txpwer_cmpl_cb = ((void*)0);
        btu_stop_timer (&btm_cb.devcb.txpwer_timer);
        return (BTM_NO_RESOURCES);
    } else {
        return (BTM_CMD_STARTED);
    }
}
