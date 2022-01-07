
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u16_t ;
typedef int tGATT_IF ;
typedef int UINT8 ;
struct TYPE_2__ {int flags; } ;


 int BLE_MESH_ADDR_PUBLIC ;
 int BLE_MESH_BTM_CHECK_STATUS (int ) ;
 int BLE_MESH_DEV_ACTIVE_SCAN ;
 int BLE_MESH_SCAN_ACTIVE ;
 int BLE_MESH_SP_ADV_ALL ;
 int BTM_BleScan (int,int ,int ,int *,int *) ;
 int BTM_BleSetScanFilterParams (int,int ,int ,int ,int ,int ,int ,int *) ;
 int bt_mesh_atomic_clear_bit (int ,int ) ;
 int bt_mesh_atomic_set_bit (int ,int ) ;
 TYPE_1__ bt_mesh_dev ;
 int bt_mesh_scan_results_cb ;

__attribute__((used)) static int start_le_scan(u8_t scan_type, u16_t interval, u16_t window, u8_t filter_dup)
{
    UINT8 scan_fil_policy = BLE_MESH_SP_ADV_ALL;
    UINT8 addr_type_own = BLE_MESH_ADDR_PUBLIC;
    tGATT_IF client_if = 0xFF;

    BLE_MESH_BTM_CHECK_STATUS(
        BTM_BleSetScanFilterParams(client_if, interval, window, scan_type, addr_type_own,
                                   filter_dup, scan_fil_policy, ((void*)0)));


    BLE_MESH_BTM_CHECK_STATUS(BTM_BleScan(1, 0, bt_mesh_scan_results_cb, ((void*)0), ((void*)0)));
    return 0;
}
