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
typedef  unsigned int u8_t ;
typedef  scalar_t__ u64_t ;
struct net_buf_simple_state {int dummy; } ;
struct net_buf_simple {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {int /*<<< orphan*/  recv_dst; int /*<<< orphan*/  addr; } ;
struct bt_mesh_net_rx {int friend_match; scalar_t__ net_if; int /*<<< orphan*/  local_match; int /*<<< orphan*/  friend_cred; int /*<<< orphan*/  seq; TYPE_2__ ctx; TYPE_1__* sub; } ;
typedef  enum bt_mesh_friend_pdu_type { ____Placeholder_bt_mesh_friend_pdu_type } bt_mesh_friend_pdu_type ;
struct TYPE_3__ {int /*<<< orphan*/  net_idx; } ;

/* Variables and functions */
 int BLE_MESH_FRIEND_PDU_SINGLE ; 
 int /*<<< orphan*/  BLE_MESH_NET_HDR_LEN ; 
 scalar_t__ BLE_MESH_NET_IF_ADV ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_FRIEND ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_LOW_POWER ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_NODE ; 
 int EAGAIN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRANS_SEQ_AUTH_NVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bt_mesh_net_rx*,int,scalar_t__*,unsigned int,struct net_buf_simple*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct bt_mesh_net_rx*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct net_buf_simple*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_buf_simple*,struct net_buf_simple_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_buf_simple*,struct net_buf_simple_state*) ; 
 int FUNC15 (struct net_buf_simple*,struct bt_mesh_net_rx*,int*,scalar_t__*,unsigned int*) ; 
 int FUNC16 (struct net_buf_simple*,struct bt_mesh_net_rx*,scalar_t__*) ; 

int FUNC17(struct net_buf_simple *buf, struct bt_mesh_net_rx *rx)
{
    u64_t seq_auth = TRANS_SEQ_AUTH_NVAL;
    enum bt_mesh_friend_pdu_type pdu_type = BLE_MESH_FRIEND_PDU_SINGLE;
    struct net_buf_simple_state state;
    u8_t seg_count = 0U;
    int err;

    if (FUNC2(CONFIG_BLE_MESH_FRIEND)) {
        rx->friend_match = FUNC6(rx->sub->net_idx,
                                                rx->ctx.recv_dst);
    } else {
        rx->friend_match = false;
    }

    FUNC0("src 0x%04x dst 0x%04x seq 0x%08x friend_match %u",
           rx->ctx.addr, rx->ctx.recv_dst, rx->seq, rx->friend_match);

    /* Remove network headers */
    FUNC12(buf, BLE_MESH_NET_HDR_LEN);

    FUNC0("Payload %s", FUNC4(buf->data, buf->len));

    /* If LPN mode is enabled messages are only accepted when we've
     * requested the Friend to send them. The messages must also
     * be encrypted using the Friend Credentials.
     */
    if (FUNC2(CONFIG_BLE_MESH_NODE) && FUNC7()) {
        if (FUNC2(CONFIG_BLE_MESH_LOW_POWER) &&
                FUNC8() && rx->net_if == BLE_MESH_NET_IF_ADV &&
                (!FUNC11() || !rx->friend_cred)) {
            FUNC1("Ignoring unexpected message in Low Power mode");
            return -EAGAIN;
        }
    }

    /* Save the app-level state so the buffer can later be placed in
     * the Friend Queue.
     */
    FUNC14(buf, &state);

    if (FUNC3(buf->data)) {
        /* Segmented messages must match a local element or an
         * LPN of this Friend.
         */
        if (!rx->local_match && !rx->friend_match) {
            return 0;
        }

        err = FUNC15(buf, rx, &pdu_type, &seq_auth, &seg_count);
    } else {
        seg_count = 1U;
        err = FUNC16(buf, rx, &seq_auth);
    }

    /* Notify LPN state machine so a Friend Poll will be sent. If the
     * message was a Friend Update it's possible that a Poll was already
     * queued for sending, however that's fine since then the
     * bt_mesh_lpn_waiting_update() function will return false:
     * we still need to go through the actual sending to the bearer and
     * wait for ReceiveDelay before transitioning to WAIT_UPDATE state.
     * Another situation where we want to notify the LPN state machine
     * is if it's configured to use an automatic Friendship establishment
     * timer, in which case we want to reset the timer at this point.
     *
     */
    if (FUNC2(CONFIG_BLE_MESH_NODE) && FUNC7()) {
        if (FUNC2(CONFIG_BLE_MESH_LOW_POWER) &&
                (FUNC10() ||
                 (FUNC8() && FUNC11()))) {
            FUNC9(rx);
        }
    }

    FUNC13(buf, &state);

    if (FUNC2(CONFIG_BLE_MESH_NODE) && FUNC7()) {
        if (FUNC2(CONFIG_BLE_MESH_FRIEND) && rx->friend_match && !err) {
            if (seq_auth == TRANS_SEQ_AUTH_NVAL) {
                FUNC5(rx, pdu_type, NULL,
                                          seg_count, buf);
            } else {
                FUNC5(rx, pdu_type, &seq_auth,
                                          seg_count, buf);
            }
        }
    }

    return err;
}