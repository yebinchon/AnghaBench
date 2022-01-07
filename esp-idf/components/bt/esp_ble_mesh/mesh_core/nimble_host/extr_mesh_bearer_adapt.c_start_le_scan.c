
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8_t ;
typedef void* u16_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int passive; void* window; void* itvl; scalar_t__ filter_duplicates; } ;


 int BLE_HS_FOREVER ;
 int BLE_MESH_DEV_ACTIVE_SCAN ;
 scalar_t__ BLE_MESH_SCAN_ACTIVE ;
 scalar_t__ BLE_MESH_SCAN_PASSIVE ;
 int BLE_OWN_ADDR_PUBLIC ;
 int ble_gap_disc (int ,int ,TYPE_1__*,int ,int *) ;
 int bt_mesh_atomic_clear_bit (int ,int ) ;
 int bt_mesh_atomic_set_bit (int ,int ) ;
 TYPE_2__ bt_mesh_dev ;
 int disc_cb ;
 TYPE_1__ scan_param ;

__attribute__((used)) static int start_le_scan(u8_t scan_type, u16_t interval, u16_t window, u8_t filter_dup)
{

    scan_param.filter_duplicates = filter_dup;
    scan_param.itvl = interval;
    scan_param.window = window;

    if (scan_type == BLE_MESH_SCAN_PASSIVE) {
        scan_param.passive = 1;
    } else {
        scan_param.passive = 0;
    }
    ble_gap_disc(BLE_OWN_ADDR_PUBLIC, BLE_HS_FOREVER, &scan_param, disc_cb, ((void*)0));
    return 0;
}
