
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int store_status_cb; int sync_cb; int reset_cb; } ;


 TYPE_1__ ble_hs_cfg ;
 int ble_store_util_status_rr ;
 int blemesh_on_reset ;
 int blemesh_on_sync ;
 int health_pub_init () ;
 int nimble_port_freertos_deinit () ;
 int nimble_port_run () ;

void blemesh_host_task(void *param)
{
    ble_hs_cfg.reset_cb = blemesh_on_reset;
    ble_hs_cfg.sync_cb = blemesh_on_sync;
    ble_hs_cfg.store_status_cb = ble_store_util_status_rr;

    health_pub_init();
    nimble_port_run();
    nimble_port_freertos_deinit();
}
