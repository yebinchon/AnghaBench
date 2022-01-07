
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTM_BleRegiseterConnParamCallback (int ) ;
 int btc_update_conn_param_callback ;

void btc_gap_callback_init(void)
{
    BTM_BleRegiseterConnParamCallback(btc_update_conn_param_callback);

}
