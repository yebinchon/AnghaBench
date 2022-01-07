
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int BLE_MESH_DEV_SCANNING ;
 int ble_gap_disc_cancel () ;
 int bt_mesh_atomic_clear_bit (int ,int ) ;
 scalar_t__ bt_mesh_atomic_test_bit (int ,int ) ;
 TYPE_1__ bt_mesh_dev ;
 int * bt_mesh_scan_dev_found_cb ;

int bt_le_scan_stop(void)
{






    ble_gap_disc_cancel();


    bt_mesh_scan_dev_found_cb = ((void*)0);
    return 0;
}
