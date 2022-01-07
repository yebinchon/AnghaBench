
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_buf_simple_state {int dummy; } ;
struct net_buf_simple {int dummy; } ;
struct TYPE_2__ {int recv_dst; int addr; } ;
struct bt_mesh_net_rx {int local_match; size_t msg_cache_idx; int friend_match; TYPE_1__ ctx; int rssi; } ;
typedef int s8_t ;
typedef enum bt_mesh_net_if { ____Placeholder_bt_mesh_net_if } bt_mesh_net_if ;


 int BLE_MESH_ADDR_IS_UNICAST (int ) ;
 int BLE_MESH_NET_IF_PROXY ;
 int BT_DBG (char*,int ,int) ;
 int BT_WARN (char*) ;
 int CONFIG_BLE_MESH_GATT_PROXY_SERVER ;
 int EAGAIN ;
 scalar_t__ IS_ENABLED (int ) ;
 int NET_BUF_SIMPLE_DEFINE (int ,int) ;
 scalar_t__ bt_mesh_elem_find (int ) ;
 scalar_t__ bt_mesh_fixed_group_match (int ) ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_net_decode (struct net_buf_simple*,int,struct bt_mesh_net_rx*,int *) ;
 int bt_mesh_net_relay (int *,struct bt_mesh_net_rx*) ;
 int bt_mesh_proxy_addr_add (struct net_buf_simple*,int ) ;
 int bt_mesh_trans_recv (int *,struct bt_mesh_net_rx*) ;
 int buf ;
 unsigned long long* msg_cache ;
 size_t msg_cache_next ;
 int net_buf_simple_restore (int *,struct net_buf_simple_state*) ;
 int net_buf_simple_save (int *,struct net_buf_simple_state*) ;
 int ready_to_recv () ;

void bt_mesh_net_recv(struct net_buf_simple *data, s8_t rssi,
                      enum bt_mesh_net_if net_if)
{
    NET_BUF_SIMPLE_DEFINE(buf, 29);
    struct bt_mesh_net_rx rx = { .rssi = rssi };
    struct net_buf_simple_state state;

    BT_DBG("rssi %d net_if %u", rssi, net_if);

    if (!ready_to_recv()) {
        return;
    }

    if (bt_mesh_net_decode(data, net_if, &rx, &buf)) {
        return;
    }


    net_buf_simple_save(&buf, &state);
    rx.local_match = (bt_mesh_fixed_group_match(rx.ctx.recv_dst) ||
                      bt_mesh_elem_find(rx.ctx.recv_dst));
    if (bt_mesh_trans_recv(&buf, &rx) == -EAGAIN) {
        BT_WARN("Removing rejected message from Network Message Cache");
        msg_cache[rx.msg_cache_idx] = 0ULL;

        msg_cache_next = rx.msg_cache_idx;
    }
}
