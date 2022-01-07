
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int BLE_MESH_DEV_ADVERTISING ;
 int BLE_MESH_DEV_KEEP_ADVERTISING ;
 int ble_gap_adv_stop () ;
 int bt_mesh_atomic_clear_bit (int ,int ) ;
 int bt_mesh_atomic_test_bit (int ,int ) ;
 TYPE_1__ bt_mesh_dev ;

int bt_le_adv_stop(void)
{






    ble_gap_adv_stop();





    return 0;
}
