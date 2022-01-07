
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timeout; int latency; int max_int; int min_int; int bd_addr; } ;
struct TYPE_5__ {TYPE_1__ ble_update_conn_params; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int APPL_TRACE_ERROR (char*) ;
 int L2CA_UpdateBleConnParams (int ,int ,int ,int ,int ) ;

void bta_dm_ble_update_conn_params (tBTA_DM_MSG *p_data)
{
    if (!L2CA_UpdateBleConnParams(p_data->ble_update_conn_params.bd_addr,
                                  p_data->ble_update_conn_params.min_int,
                                  p_data->ble_update_conn_params.max_int,
                                  p_data->ble_update_conn_params.latency,
                                  p_data->ble_update_conn_params.timeout)) {
        APPL_TRACE_ERROR("Update connection parameters failed!");
    }
}
