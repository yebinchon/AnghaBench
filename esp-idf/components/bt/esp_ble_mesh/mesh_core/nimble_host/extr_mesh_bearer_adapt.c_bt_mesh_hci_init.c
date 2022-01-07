
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hci_version; } ;


 int BLE_MESH_HCI_VERSION_5_0 ;
 int ble_hs_hci_get_hci_version () ;
 TYPE_1__ bt_mesh_dev ;

void bt_mesh_hci_init(void)
{







    bt_mesh_dev.hci_version = ble_hs_hci_get_hci_version();

    return;
}
