
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int supervision_tout; int slave_latency; int conn_int_max; int conn_int_min; int peer_bda; } ;
struct TYPE_5__ {TYPE_1__ ble_set_conn_params; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_BleSetPrefConnParams (int ,int ,int ,int ,int ) ;

void bta_dm_ble_set_conn_params (tBTA_DM_MSG *p_data)
{
    BTM_BleSetPrefConnParams(p_data->ble_set_conn_params.peer_bda,
                             p_data->ble_set_conn_params.conn_int_min,
                             p_data->ble_set_conn_params.conn_int_max,
                             p_data->ble_set_conn_params.slave_latency,
                             p_data->ble_set_conn_params.supervision_tout);
}
