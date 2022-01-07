
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_buf {int b; int len; int data; } ;
struct k_work {int dummy; } ;
struct TYPE_2__ {int local_queue; } ;


 int BLE_MESH_NET_IF_LOCAL ;
 int BT_DBG (char*,int ,int ) ;
 int bt_hex (int ,int ) ;
 TYPE_1__ bt_mesh ;
 int bt_mesh_net_recv (int *,int ,int ) ;
 struct net_buf* net_buf_slist_get (int *) ;
 int net_buf_unref (struct net_buf*) ;

__attribute__((used)) static void bt_mesh_net_local(struct k_work *work)
{
    struct net_buf *buf;

    while ((buf = net_buf_slist_get(&bt_mesh.local_queue))) {
        BT_DBG("len %u: %s", buf->len, bt_hex(buf->data, buf->len));
        bt_mesh_net_recv(&buf->b, 0, BLE_MESH_NET_IF_LOCAL);
        net_buf_unref(buf);
    }
}
