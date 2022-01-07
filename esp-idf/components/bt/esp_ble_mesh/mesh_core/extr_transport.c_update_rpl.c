
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_rpl {int old_iv; int seq; int src; } ;
struct TYPE_2__ {int addr; } ;
struct bt_mesh_net_rx {int old_iv; int seq; TYPE_1__ ctx; } ;


 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_mesh_store_rpl (struct bt_mesh_rpl*) ;

__attribute__((used)) static void update_rpl(struct bt_mesh_rpl *rpl, struct bt_mesh_net_rx *rx)
{
    rpl->src = rx->ctx.addr;
    rpl->seq = rx->seq;
    rpl->old_iv = rx->old_iv;

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
        bt_mesh_store_rpl(rpl);
    }
}
