
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTM_TRACE_EVENT (char*) ;
 int background_connections_clear () ;
 int btsnd_hcic_ble_clear_white_list () ;

void btm_ble_clear_white_list (void)
{
    BTM_TRACE_EVENT ("btm_ble_clear_white_list");
    btsnd_hcic_ble_clear_white_list();
    background_connections_clear();
}
