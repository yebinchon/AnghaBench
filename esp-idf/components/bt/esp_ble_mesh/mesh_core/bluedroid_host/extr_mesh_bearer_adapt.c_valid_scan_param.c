
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_scan_param {scalar_t__ type; scalar_t__ filter_dup; int interval; int window; } ;


 scalar_t__ BLE_MESH_SCAN_ACTIVE ;
 scalar_t__ BLE_MESH_SCAN_FILTER_DUP_DISABLE ;
 scalar_t__ BLE_MESH_SCAN_FILTER_DUP_ENABLE ;
 scalar_t__ BLE_MESH_SCAN_PASSIVE ;

__attribute__((used)) static bool valid_scan_param(const struct bt_mesh_scan_param *param)
{
    if (param->type != BLE_MESH_SCAN_PASSIVE &&
            param->type != BLE_MESH_SCAN_ACTIVE) {
        return 0;
    }

    if (param->filter_dup != BLE_MESH_SCAN_FILTER_DUP_DISABLE &&
            param->filter_dup != BLE_MESH_SCAN_FILTER_DUP_ENABLE) {
        return 0;
    }

    if (param->interval < 0x0004 || param->interval > 0x4000) {
        return 0;
    }

    if (param->window < 0x0004 || param->window > 0x4000) {
        return 0;
    }

    if (param->window > param->interval) {
        return 0;
    }

    return 1;
}
