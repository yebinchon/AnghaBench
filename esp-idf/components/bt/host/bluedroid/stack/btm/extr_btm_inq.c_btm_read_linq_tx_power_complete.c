
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hci_status; scalar_t__ tx_power; int status; } ;
typedef TYPE_2__ tBTM_INQ_TXPWR_RESULTS ;
typedef int (* tBTM_CMPL_CB ) (TYPE_2__*) ;
typedef int UINT8 ;
struct TYPE_6__ {int (* p_txpwer_cmpl_cb ) (TYPE_2__*) ;int txpwer_timer; } ;
struct TYPE_8__ {TYPE_1__ devcb; } ;


 int BTM_ERR_PROCESSING ;
 int BTM_SUCCESS ;
 int BTM_TRACE_EVENT (char*,scalar_t__,scalar_t__) ;
 scalar_t__ HCI_SUCCESS ;
 int STREAM_TO_UINT8 (scalar_t__,int *) ;
 TYPE_5__ btm_cb ;
 int btu_stop_timer (int *) ;
 int stub1 (TYPE_2__*) ;

void btm_read_linq_tx_power_complete(UINT8 *p)
{
    tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_txpwer_cmpl_cb;
    tBTM_INQ_TXPWR_RESULTS results;

    btu_stop_timer (&btm_cb.devcb.txpwer_timer);

    btm_cb.devcb.p_txpwer_cmpl_cb = ((void*)0);

    if (p_cb) {
        STREAM_TO_UINT8 (results.hci_status, p);

        if (results.hci_status == HCI_SUCCESS) {
            results.status = BTM_SUCCESS;

            STREAM_TO_UINT8 (results.tx_power, p);
            BTM_TRACE_EVENT ("BTM INQ TX POWER Complete: tx_power %d, hci status 0x%02x\n",
                             results.tx_power, results.hci_status);
        } else {
            results.status = BTM_ERR_PROCESSING;
        }

        (*p_cb)(&results);
    }

}
