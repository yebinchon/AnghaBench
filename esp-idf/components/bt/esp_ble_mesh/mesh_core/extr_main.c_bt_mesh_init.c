
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
struct bt_mesh_prov {int dummy; } ;
struct bt_mesh_gatt_service {int dummy; } ;
struct bt_mesh_comp {int dummy; } ;


 int CONFIG_BLE_MESH_GATT_PROXY_SERVER ;
 int CONFIG_BLE_MESH_PB_GATT ;
 int CONFIG_BLE_MESH_PROV ;
 int CONFIG_BLE_MESH_PROXY ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_mesh_adapt_init () ;
 int bt_mesh_adv_init () ;
 int bt_mesh_beacon_init () ;
 int bt_mesh_comp_register (struct bt_mesh_comp const*) ;
 int bt_mesh_gatt_init () ;
 int bt_mesh_gatts_service_register (struct bt_mesh_gatt_service*) ;
 int bt_mesh_hci_init () ;
 int bt_mesh_k_init () ;
 int bt_mesh_net_init () ;
 int bt_mesh_prov_init (struct bt_mesh_prov const*) ;
 int bt_mesh_proxy_init () ;
 int bt_mesh_proxy_prov_client_init () ;
 int bt_mesh_rand (int*,int) ;
 int bt_mesh_settings_init () ;
 int bt_mesh_trans_init () ;
 int portTICK_PERIOD_MS ;
 int provisioner_prov_init (struct bt_mesh_prov const*) ;
 int provisioner_upper_init () ;
 int vTaskDelay (int) ;

int bt_mesh_init(const struct bt_mesh_prov *prov,
                 const struct bt_mesh_comp *comp)
{
    int err;

    bt_mesh_k_init();

    bt_mesh_hci_init();

    bt_mesh_adapt_init();

    err = bt_mesh_comp_register(comp);
    if (err) {
        return err;
    }

    bt_mesh_gatt_init();
    if (IS_ENABLED(CONFIG_BLE_MESH_PROV)) {
    }

    bt_mesh_net_init();
    bt_mesh_trans_init();
    bt_mesh_adv_init();

    if (IS_ENABLED(CONFIG_BLE_MESH_PROXY)) {







    }
    return 0;
}
