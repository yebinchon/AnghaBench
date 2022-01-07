
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTM_BLE_BATCH_SCAN_CB ;
typedef int tBTM_BLE_ADV_TRACK_CB ;
struct TYPE_5__ {int ** p_data; } ;
struct TYPE_6__ {TYPE_1__ main_rep_q; } ;


 int BTM_BLE_BATCH_REP_MAIN_Q_SIZE ;
 int BTM_TRACE_EVENT (char*) ;
 TYPE_2__ ble_advtrack_cb ;
 int * ble_advtrack_cb_ptr ;
 TYPE_2__ ble_batchscan_cb ;
 int * ble_batchscan_cb_ptr ;
 int memset (TYPE_2__*,int ,int) ;
 int osi_free (int *) ;

void btm_ble_batchscan_cleanup(void)
{
    int index = 0;
    BTM_TRACE_EVENT (" btm_ble_batchscan_cleanup");

    for (index = 0; index < BTM_BLE_BATCH_REP_MAIN_Q_SIZE; index++) {
        if (((void*)0) != ble_batchscan_cb.main_rep_q.p_data[index]) {
            osi_free(ble_batchscan_cb.main_rep_q.p_data[index]);
            ble_batchscan_cb.main_rep_q.p_data[index] = ((void*)0);
        }
    }

    memset(&ble_batchscan_cb, 0, sizeof(tBTM_BLE_BATCH_SCAN_CB));
    memset(&ble_advtrack_cb, 0, sizeof(tBTM_BLE_ADV_TRACK_CB));


    osi_free(ble_batchscan_cb_ptr);
    osi_free(ble_advtrack_cb_ptr);
    ble_batchscan_cb_ptr = ((void*)0);
    ble_advtrack_cb_ptr = ((void*)0);

}
