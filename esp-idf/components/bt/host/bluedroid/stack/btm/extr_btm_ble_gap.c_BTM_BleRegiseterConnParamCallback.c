
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTM_UPDATE_CONN_PARAM_CBACK ;
struct TYPE_2__ {int * update_conn_param_cb; } ;


 TYPE_1__ conn_param_update_cb ;

void BTM_BleRegiseterConnParamCallback(tBTM_UPDATE_CONN_PARAM_CBACK *update_conn_param_cb)
{
    conn_param_update_cb.update_conn_param_cb = update_conn_param_cb;
}
