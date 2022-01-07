
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_scan_param {scalar_t__ filter_dup; int window; int interval; int type; } ;
typedef int bt_mesh_scan_cb_t ;
struct TYPE_2__ {int flags; } ;


 int BLE_MESH_DEV_SCANNING ;
 int BLE_MESH_DEV_SCAN_FILTER_DUP ;
 int EALREADY ;
 int EINVAL ;
 int bt_mesh_atomic_clear_bit (int ,int ) ;
 int bt_mesh_atomic_set_bit (int ,int ) ;
 scalar_t__ bt_mesh_atomic_test_bit (int ,int ) ;
 TYPE_1__ bt_mesh_dev ;
 int bt_mesh_scan_dev_found_cb ;
 int start_le_scan (int ,int ,int ,scalar_t__) ;
 int valid_scan_param (struct bt_mesh_scan_param const*) ;

int bt_le_scan_start(const struct bt_mesh_scan_param *param, bt_mesh_scan_cb_t cb)
{
    int err;







    if (!valid_scan_param(param)) {
        return -EINVAL;
    }
    err = start_le_scan(param->type, param->interval, param->window, param->filter_dup);
    if (err) {
        return err;
    }





    bt_mesh_scan_dev_found_cb = cb;
    return err;
}
