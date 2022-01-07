
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct bt_mesh_model_pub {scalar_t__ count; int period_start; int retransmit; } ;
struct bt_mesh_model {struct bt_mesh_model_pub* pub; } ;


 scalar_t__ BLE_MESH_PUB_TRANSMIT_COUNT (int ) ;
 int BT_ERR (char*,int) ;
 int k_uptime_get_32 () ;

__attribute__((used)) static void publish_start(u16_t duration, int err, void *user_data)
{
    struct bt_mesh_model *mod = user_data;
    struct bt_mesh_model_pub *pub = mod->pub;

    if (err) {
        BT_ERR("Failed to publish: err %d", err);
        return;
    }


    if (pub->count == BLE_MESH_PUB_TRANSMIT_COUNT(pub->retransmit)) {
        pub->period_start = k_uptime_get_32();
    }
}
