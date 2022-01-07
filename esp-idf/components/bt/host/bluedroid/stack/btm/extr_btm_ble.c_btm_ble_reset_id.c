
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ btm_ble_process_ir ;
 int btsnd_hcic_ble_rand (void*) ;

void btm_ble_reset_id( void )
{
    BTM_TRACE_DEBUG ("btm_ble_reset_id");


    if (!btsnd_hcic_ble_rand((void *)btm_ble_process_ir)) {
        BTM_TRACE_DEBUG("Generating IR failed.");
    }
}
