
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_adv_param {int options; int interval_min; int interval_max; } ;
struct TYPE_2__ {scalar_t__ hci_version; } ;


 int BLE_MESH_ADV_OPT_CONNECTABLE ;
 scalar_t__ BLE_MESH_HCI_VERSION_5_0 ;
 TYPE_1__ bt_mesh_dev ;

__attribute__((used)) static bool valid_adv_param(const struct bt_mesh_adv_param *param)
{
    if (!(param->options & BLE_MESH_ADV_OPT_CONNECTABLE)) {






    }

    if (param->interval_min > param->interval_max ||
            param->interval_min < 0x0020 || param->interval_max > 0x4000) {
        return 0;
    }

    return 1;
}
