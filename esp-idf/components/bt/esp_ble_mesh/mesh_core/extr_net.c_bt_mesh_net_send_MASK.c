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
struct net_buf {int /*<<< orphan*/  b; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct bt_mesh_send_cb {int /*<<< orphan*/  (* end ) (int /*<<< orphan*/ ,void*) ;int /*<<< orphan*/  (* start ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;} ;
struct bt_mesh_net_tx {TYPE_1__* ctx; int /*<<< orphan*/  src; } ;
struct TYPE_4__ {int /*<<< orphan*/  local_work; int /*<<< orphan*/  local_queue; int /*<<< orphan*/  seq; } ;
struct TYPE_3__ {unsigned int send_ttl; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int BLE_MESH_TTL_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_GATT_PROXY_SERVER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ bt_mesh ; 
 int /*<<< orphan*/  FUNC4 (struct net_buf*,struct bt_mesh_send_cb const*,void*) ; 
 unsigned int FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int FUNC9 (struct bt_mesh_net_tx*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct net_buf*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_buf*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_buf*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_buf*) ; 
 int /*<<< orphan*/  FUNC18 (struct bt_mesh_send_cb const*,void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,void*) ; 

int FUNC21(struct bt_mesh_net_tx *tx, struct net_buf *buf,
                     const struct bt_mesh_send_cb *cb, void *cb_data)
{
    int err;

    FUNC1("src 0x%04x dst 0x%04x len %u headroom %u tailroom %u",
           tx->src, tx->ctx->addr, buf->len, FUNC13(buf),
           FUNC16(buf));
    FUNC1("Payload len %u: %s", buf->len, FUNC3(buf->data, buf->len));
    FUNC1("Seq 0x%06x", bt_mesh.seq);

    if (tx->ctx->send_ttl == BLE_MESH_TTL_DEFAULT) {
        tx->ctx->send_ttl = FUNC5();
    }

    err = FUNC9(tx, &buf->b, false);
    if (err) {
        goto done;
    }

    /* Deliver to GATT Proxy Clients if necessary. Mesh spec 3.4.5.2:
     * "The output filter of the interface connected to advertising or
     * GATT bearers shall drop all messages with TTL value set to 1."
     */
#if CONFIG_BLE_MESH_NODE
    if (bt_mesh_is_provisioned()) {
        if (IS_ENABLED(CONFIG_BLE_MESH_GATT_PROXY_SERVER) &&
                tx->ctx->send_ttl != 1U) {
            if (bt_mesh_proxy_relay(&buf->b, tx->ctx->addr) &&
                    BLE_MESH_ADDR_IS_UNICAST(tx->ctx->addr)) {
                /* Notify completion if this only went
                * through the Mesh Proxy.
                */
                send_cb_finalize(cb, cb_data);

                err = 0;
                goto done;
            }
        }
    }
#endif

#if CONFIG_BLE_MESH_GATT_PROXY_CLIENT
    if (tx->ctx->send_ttl != 1U) {
        if (bt_mesh_proxy_client_send(&buf->b, tx->ctx->addr)) {
            /* If Proxy Client succeeds to send messages with GATT bearer,
             * we can directly finish here. And if not, which means no
             * connection has been created with Proxy Client, here we will
             * use advertising bearer for the messages.
             */
            send_cb_finalize(cb, cb_data);

            err = 0;
            goto done;
        }
    }
#endif

    /* Deliver to local network interface if necessary */
    if (FUNC7(tx->ctx->addr) ||
            FUNC6(tx->ctx->addr)) {
        if (cb && cb->start) {
            cb->start(0, 0, cb_data);
        }
        FUNC15(&bt_mesh.local_queue, FUNC14(buf));
        if (cb && cb->end) {
            cb->end(0, cb_data);
        }
        FUNC12(&bt_mesh.local_work);
    } else if (tx->ctx->send_ttl != 1U) {
        /* Deliver to the advertising network interface. Mesh spec
         * 3.4.5.2: "The output filter of the interface connected to
         * advertising or GATT bearers shall drop all messages with
         * TTL value set to 1."
         */
        FUNC4(buf, cb, cb_data);
    }

done:
    FUNC17(buf);
    return err;
}