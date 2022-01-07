
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_buf {int b; int len; int data; } ;
struct bt_mesh_send_cb {int (* end ) (int ,void*) ;int (* start ) (int ,int ,void*) ;} ;
struct bt_mesh_net_tx {TYPE_1__* ctx; int src; } ;
struct TYPE_4__ {int local_work; int local_queue; int seq; } ;
struct TYPE_3__ {unsigned int send_ttl; int addr; } ;


 scalar_t__ BLE_MESH_ADDR_IS_UNICAST (int ) ;
 unsigned int BLE_MESH_TTL_DEFAULT ;
 int BT_DBG (char*,int ,...) ;
 int CONFIG_BLE_MESH_GATT_PROXY_SERVER ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_hex (int ,int ) ;
 TYPE_2__ bt_mesh ;
 int bt_mesh_adv_send (struct net_buf*,struct bt_mesh_send_cb const*,void*) ;
 unsigned int bt_mesh_default_ttl_get () ;
 scalar_t__ bt_mesh_elem_find (int ) ;
 scalar_t__ bt_mesh_fixed_group_match (int ) ;
 scalar_t__ bt_mesh_is_provisioned () ;
 int bt_mesh_net_encode (struct bt_mesh_net_tx*,int *,int) ;
 scalar_t__ bt_mesh_proxy_client_send (int *,int ) ;
 scalar_t__ bt_mesh_proxy_relay (int *,int ) ;
 int k_work_submit (int *) ;
 int net_buf_headroom (struct net_buf*) ;
 int net_buf_ref (struct net_buf*) ;
 int net_buf_slist_put (int *,int ) ;
 int net_buf_tailroom (struct net_buf*) ;
 int net_buf_unref (struct net_buf*) ;
 int send_cb_finalize (struct bt_mesh_send_cb const*,void*) ;
 int stub1 (int ,int ,void*) ;
 int stub2 (int ,void*) ;

int bt_mesh_net_send(struct bt_mesh_net_tx *tx, struct net_buf *buf,
                     const struct bt_mesh_send_cb *cb, void *cb_data)
{
    int err;

    BT_DBG("src 0x%04x dst 0x%04x len %u headroom %u tailroom %u",
           tx->src, tx->ctx->addr, buf->len, net_buf_headroom(buf),
           net_buf_tailroom(buf));
    BT_DBG("Payload len %u: %s", buf->len, bt_hex(buf->data, buf->len));
    BT_DBG("Seq 0x%06x", bt_mesh.seq);

    if (tx->ctx->send_ttl == BLE_MESH_TTL_DEFAULT) {
        tx->ctx->send_ttl = bt_mesh_default_ttl_get();
    }

    err = bt_mesh_net_encode(tx, &buf->b, 0);
    if (err) {
        goto done;
    }
    if (bt_mesh_fixed_group_match(tx->ctx->addr) ||
            bt_mesh_elem_find(tx->ctx->addr)) {
        if (cb && cb->start) {
            cb->start(0, 0, cb_data);
        }
        net_buf_slist_put(&bt_mesh.local_queue, net_buf_ref(buf));
        if (cb && cb->end) {
            cb->end(0, cb_data);
        }
        k_work_submit(&bt_mesh.local_work);
    } else if (tx->ctx->send_ttl != 1U) {





        bt_mesh_adv_send(buf, cb, cb_data);
    }

done:
    net_buf_unref(buf);
    return err;
}
