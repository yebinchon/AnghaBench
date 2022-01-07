
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_10__ {int states; int features; } ;
struct TYPE_14__ {TYPE_1__ le; int manufacturer; int lmp_subversion; int hci_revision; int lmp_version; int hci_version; int * features; } ;
struct TYPE_13__ {int * (* get_ble_supported_states ) () ;TYPE_2__* (* get_bt_version ) () ;TYPE_7__* (* get_features_ble ) () ;} ;
struct TYPE_12__ {int * as_array; } ;
struct TYPE_11__ {int manufacturer; int lmp_subversion; int hci_revision; int lmp_version; int hci_version; } ;


 int BLE_MESH_HCI_VERSION_5_0 ;
 int STREAM_TO_UINT32 (int,int const*) ;
 TYPE_9__ bt_mesh_dev ;
 TYPE_8__* controller_get_interface () ;
 int memcpy (int ,int const*,int) ;
 TYPE_7__* stub1 () ;
 TYPE_2__* stub2 () ;
 TYPE_2__* stub3 () ;
 TYPE_2__* stub4 () ;
 TYPE_2__* stub5 () ;
 TYPE_2__* stub6 () ;
 int * stub7 () ;

void bt_mesh_hci_init(void)
{
    const uint8_t *features = controller_get_interface()->get_features_ble()->as_array;
    if (features != ((void*)0)) {
        memcpy(bt_mesh_dev.features[0], features, 8);
        memcpy(bt_mesh_dev.le.features, features, 8);
    }
    bt_mesh_dev.hci_version = controller_get_interface()->get_bt_version()->hci_version;

    bt_mesh_dev.lmp_version = controller_get_interface()->get_bt_version()->lmp_version;
    bt_mesh_dev.hci_revision = controller_get_interface()->get_bt_version()->hci_revision;
    bt_mesh_dev.lmp_subversion = controller_get_interface()->get_bt_version()->lmp_subversion;
    bt_mesh_dev.manufacturer = controller_get_interface()->get_bt_version()->manufacturer;

    const uint8_t *p = controller_get_interface()->get_ble_supported_states();
    uint64_t states_fh = 0, states_sh = 0;
    STREAM_TO_UINT32(states_fh, p);
    STREAM_TO_UINT32(states_sh, p);
    bt_mesh_dev.le.states = (states_sh << 32) | states_fh;
}
