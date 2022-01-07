
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* tBTM_CMPL_CB ) (TYPE_2__*) ;
struct TYPE_7__ {int hci_status; int status; } ;
typedef TYPE_2__ tBTM_BLE_SET_CHANNELS_RESULTS ;
typedef int UINT8 ;
struct TYPE_6__ {int (* p_ble_channels_cmpl_cb ) (TYPE_2__*) ;int ble_channels_timer; } ;
struct TYPE_8__ {TYPE_1__ devcb; } ;


 int BTM_ERR_PROCESSING ;
 int BTM_ILLEGAL_VALUE ;
 int BTM_SUCCESS ;



 int STREAM_TO_UINT8 (int,int *) ;
 TYPE_5__ btm_cb ;
 int btu_free_timer (int *) ;
 int stub1 (TYPE_2__*) ;

void btm_ble_set_channels_complete (UINT8 *p)
{
    tBTM_CMPL_CB *p_cb = btm_cb.devcb.p_ble_channels_cmpl_cb;
    tBTM_BLE_SET_CHANNELS_RESULTS results;

    btu_free_timer (&btm_cb.devcb.ble_channels_timer);


    btm_cb.devcb.p_ble_channels_cmpl_cb = ((void*)0);

    if (p_cb) {
        STREAM_TO_UINT8 (results.hci_status, p);

        switch (results.hci_status){
            case 128:
                results.status = BTM_SUCCESS;
                break;
            case 129:
            case 130:
                results.status = BTM_ILLEGAL_VALUE;
                break;
            default:
                results.status = BTM_ERR_PROCESSING;
                break;
        }
        (*p_cb)(&results);
    }
}
