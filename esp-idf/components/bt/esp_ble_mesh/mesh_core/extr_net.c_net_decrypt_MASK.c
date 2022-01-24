#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
struct net_buf_simple {int /*<<< orphan*/  data; } ;
struct bt_mesh_subnet {int /*<<< orphan*/  net_idx; } ;
struct TYPE_3__ {int /*<<< orphan*/  addr; } ;
struct bt_mesh_net_rx {int old_iv; scalar_t__ net_if; TYPE_1__ ctx; } ;
struct TYPE_4__ {int iv_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BLE_MESH_NET_IF_ADV ; 
 scalar_t__ BLE_MESH_NET_IF_PROXY_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct bt_mesh_net_rx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_PROXY ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_2__ bt_mesh ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/  const*,struct net_buf_simple*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC12 (struct bt_mesh_net_rx*,struct net_buf_simple*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_buf_simple*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct net_buf_simple*) ; 

__attribute__((used)) static int FUNC15(struct bt_mesh_subnet *sub, const u8_t *enc,
                       const u8_t *priv, const u8_t *data,
                       size_t data_len, struct bt_mesh_net_rx *rx,
                       struct net_buf_simple *buf)
{
    FUNC2("NID 0x%02x net_idx 0x%04x", FUNC6(data), sub->net_idx);
    FUNC2("IVI %u net->iv_index 0x%08x", FUNC5(data), bt_mesh.iv_index);

    rx->old_iv = (FUNC5(data) != (bt_mesh.iv_index & 0x01));

    FUNC14(buf);
    FUNC11(FUNC13(buf, data_len), data, data_len);

    if (FUNC10(buf->data, FUNC1(rx), priv)) {
        return -ENOENT;
    }

    /* TODO: For provisioner, when a device is re-provisioned and start to
     * send the same message(e.g. cfg_appkey_add), the status message is easy
     * to be filtered here. So when a device is re-provisioned, the related
     * msg_cache should be cleared. Will do it later.
     */
    if (rx->net_if == BLE_MESH_NET_IF_ADV && FUNC12(rx, buf)) {
        FUNC3("Duplicate found in Network Message Cache");
        return -EALREADY;
    }

    rx->ctx.addr = FUNC7(buf->data);
    if (!FUNC0(rx->ctx.addr)) {
        FUNC3("Ignoring non-unicast src addr 0x%04x", rx->ctx.addr);
        return -EINVAL;
    }

    FUNC2("src 0x%04x", rx->ctx.addr);

#if CONFIG_BLE_MESH_NODE
    if (bt_mesh_is_provisioned()) {
        if (IS_ENABLED(CONFIG_BLE_MESH_PROXY) &&
                rx->net_if == BLE_MESH_NET_IF_PROXY_CFG) {
            return bt_mesh_net_decrypt(enc, buf, BLE_MESH_NET_IVI_RX(rx),
                                       true);
        }
    }
#endif

    return FUNC9(enc, buf, FUNC1(rx), false);
}