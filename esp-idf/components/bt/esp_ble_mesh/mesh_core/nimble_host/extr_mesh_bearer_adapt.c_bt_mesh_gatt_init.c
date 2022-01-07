
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int gatts_register_cb; } ;
struct TYPE_5__ {int handle; } ;
struct TYPE_6__ {int wr_desc_done; int mtu; TYPE_1__ conn; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int BLE_ATT_MTU_DFLT ;
 int assert (int) ;
 int ble_att_set_preferred_mtu (int ) ;
 int ble_gatts_add_svcs (int ) ;
 int ble_gatts_count_cfg (int ) ;
 int ble_gatts_start () ;
 int ble_gatts_svc_set_visibility (int ,int) ;
 TYPE_3__ ble_hs_cfg ;
 int ble_svc_gap_init () ;
 int ble_svc_gatt_init () ;
 TYPE_2__* bt_mesh_gattc_info ;
 int gatt_register_cb ;
 int prov_svc_start_handle ;
 int proxy_svc_start_handle ;
 int svc_defs ;

void bt_mesh_gatt_init(void)
{
    ble_att_set_preferred_mtu(BLE_ATT_MTU_DFLT);

    ble_hs_cfg.gatts_register_cb = gatt_register_cb;
}
