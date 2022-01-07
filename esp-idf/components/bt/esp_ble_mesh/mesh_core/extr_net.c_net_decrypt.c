
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct net_buf_simple {int data; } ;
struct bt_mesh_subnet {int net_idx; } ;
struct TYPE_3__ {int addr; } ;
struct bt_mesh_net_rx {int old_iv; scalar_t__ net_if; TYPE_1__ ctx; } ;
struct TYPE_4__ {int iv_index; } ;


 int BLE_MESH_ADDR_IS_UNICAST (int ) ;
 scalar_t__ BLE_MESH_NET_IF_ADV ;
 scalar_t__ BLE_MESH_NET_IF_PROXY_CFG ;
 int BLE_MESH_NET_IVI_RX (struct bt_mesh_net_rx*) ;
 int BT_DBG (char*,int,...) ;
 int BT_WARN (char*,...) ;
 int CONFIG_BLE_MESH_PROXY ;
 int EALREADY ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ENABLED (int ) ;
 int IVI (int const*) ;
 int NID (int const*) ;
 int SRC (int ) ;
 TYPE_2__ bt_mesh ;
 scalar_t__ bt_mesh_is_provisioned () ;
 int bt_mesh_net_decrypt (int const*,struct net_buf_simple*,int ,int) ;
 scalar_t__ bt_mesh_net_obfuscate (int ,int ,int const*) ;
 int memcpy (int ,int const*,size_t) ;
 scalar_t__ msg_cache_match (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int net_buf_simple_add (struct net_buf_simple*,size_t) ;
 int net_buf_simple_reset (struct net_buf_simple*) ;

__attribute__((used)) static int net_decrypt(struct bt_mesh_subnet *sub, const u8_t *enc,
                       const u8_t *priv, const u8_t *data,
                       size_t data_len, struct bt_mesh_net_rx *rx,
                       struct net_buf_simple *buf)
{
    BT_DBG("NID 0x%02x net_idx 0x%04x", NID(data), sub->net_idx);
    BT_DBG("IVI %u net->iv_index 0x%08x", IVI(data), bt_mesh.iv_index);

    rx->old_iv = (IVI(data) != (bt_mesh.iv_index & 0x01));

    net_buf_simple_reset(buf);
    memcpy(net_buf_simple_add(buf, data_len), data, data_len);

    if (bt_mesh_net_obfuscate(buf->data, BLE_MESH_NET_IVI_RX(rx), priv)) {
        return -ENOENT;
    }






    if (rx->net_if == BLE_MESH_NET_IF_ADV && msg_cache_match(rx, buf)) {
        BT_WARN("Duplicate found in Network Message Cache");
        return -EALREADY;
    }

    rx->ctx.addr = SRC(buf->data);
    if (!BLE_MESH_ADDR_IS_UNICAST(rx->ctx.addr)) {
        BT_WARN("Ignoring non-unicast src addr 0x%04x", rx->ctx.addr);
        return -EINVAL;
    }

    BT_DBG("src 0x%04x", rx->ctx.addr);
    return bt_mesh_net_decrypt(enc, buf, BLE_MESH_NET_IVI_RX(rx), 0);
}
