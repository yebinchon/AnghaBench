
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int val; } ;
typedef TYPE_1__ ble_addr_t ;


 int CONFIG_SETTINGS ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ IS_ENABLED (int ) ;
 int assert (int) ;
 int ble_hs_id_gen_rnd (int,TYPE_1__*) ;
 int ble_hs_id_set_rnd (int ) ;
 int bt_mesh_init (int ,int *,int *) ;
 scalar_t__ bt_mesh_is_provisioned () ;
 int comp ;
 int prov ;
 int settings_load () ;
 int tag ;

__attribute__((used)) static void
blemesh_on_sync(void)
{
    int err;
    ble_addr_t addr;

    ESP_LOGI(tag, "Bluetooth initialized\n");


    err = ble_hs_id_gen_rnd(1, &addr);
    assert(err == 0);
    err = ble_hs_id_set_rnd(addr.val);
    assert(err == 0);

    err = bt_mesh_init(addr.type, &prov, &comp);
    if (err) {
        ESP_LOGI(tag, "Initializing mesh failed (err %d)\n", err);
        return;
    }

    ESP_LOGI(tag, "Mesh initialized\n");

    if (IS_ENABLED(CONFIG_SETTINGS)) {
        settings_load();
    }

    if (bt_mesh_is_provisioned()) {
        ESP_LOGI(tag, "Mesh network restored from flash\n");
    }
}
