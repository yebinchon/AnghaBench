
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8_t ;
typedef scalar_t__ u64_t ;
struct net_buf_simple_state {int dummy; } ;
struct net_buf_simple {int data; int len; } ;
struct TYPE_4__ {int recv_dst; int addr; } ;
struct bt_mesh_net_rx {int friend_match; scalar_t__ net_if; int local_match; int friend_cred; int seq; TYPE_2__ ctx; TYPE_1__* sub; } ;
typedef enum bt_mesh_friend_pdu_type { ____Placeholder_bt_mesh_friend_pdu_type } bt_mesh_friend_pdu_type ;
struct TYPE_3__ {int net_idx; } ;


 int BLE_MESH_FRIEND_PDU_SINGLE ;
 int BLE_MESH_NET_HDR_LEN ;
 scalar_t__ BLE_MESH_NET_IF_ADV ;
 int BT_DBG (char*,int ,...) ;
 int BT_WARN (char*) ;
 int CONFIG_BLE_MESH_FRIEND ;
 int CONFIG_BLE_MESH_LOW_POWER ;
 int CONFIG_BLE_MESH_NODE ;
 int EAGAIN ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ SEG (int ) ;
 scalar_t__ TRANS_SEQ_AUTH_NVAL ;
 int bt_hex (int ,int ) ;
 int bt_mesh_friend_enqueue_rx (struct bt_mesh_net_rx*,int,scalar_t__*,unsigned int,struct net_buf_simple*) ;
 int bt_mesh_friend_match (int ,int ) ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_lpn_established () ;
 int bt_mesh_lpn_msg_received (struct bt_mesh_net_rx*) ;
 scalar_t__ bt_mesh_lpn_timer () ;
 scalar_t__ bt_mesh_lpn_waiting_update () ;
 int net_buf_simple_pull (struct net_buf_simple*,int ) ;
 int net_buf_simple_restore (struct net_buf_simple*,struct net_buf_simple_state*) ;
 int net_buf_simple_save (struct net_buf_simple*,struct net_buf_simple_state*) ;
 int trans_seg (struct net_buf_simple*,struct bt_mesh_net_rx*,int*,scalar_t__*,unsigned int*) ;
 int trans_unseg (struct net_buf_simple*,struct bt_mesh_net_rx*,scalar_t__*) ;

int bt_mesh_trans_recv(struct net_buf_simple *buf, struct bt_mesh_net_rx *rx)
{
    u64_t seq_auth = TRANS_SEQ_AUTH_NVAL;
    enum bt_mesh_friend_pdu_type pdu_type = BLE_MESH_FRIEND_PDU_SINGLE;
    struct net_buf_simple_state state;
    u8_t seg_count = 0U;
    int err;

    if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND)) {
        rx->friend_match = bt_mesh_friend_match(rx->sub->net_idx,
                                                rx->ctx.recv_dst);
    } else {
        rx->friend_match = 0;
    }

    BT_DBG("src 0x%04x dst 0x%04x seq 0x%08x friend_match %u",
           rx->ctx.addr, rx->ctx.recv_dst, rx->seq, rx->friend_match);


    net_buf_simple_pull(buf, BLE_MESH_NET_HDR_LEN);

    BT_DBG("Payload %s", bt_hex(buf->data, buf->len));





    if (IS_ENABLED(CONFIG_BLE_MESH_NODE) && bt_mesh_is_provisioned()) {
        if (IS_ENABLED(CONFIG_BLE_MESH_LOW_POWER) &&
                bt_mesh_lpn_established() && rx->net_if == BLE_MESH_NET_IF_ADV &&
                (!bt_mesh_lpn_waiting_update() || !rx->friend_cred)) {
            BT_WARN("Ignoring unexpected message in Low Power mode");
            return -EAGAIN;
        }
    }




    net_buf_simple_save(buf, &state);

    if (SEG(buf->data)) {



        if (!rx->local_match && !rx->friend_match) {
            return 0;
        }

        err = trans_seg(buf, rx, &pdu_type, &seq_auth, &seg_count);
    } else {
        seg_count = 1U;
        err = trans_unseg(buf, rx, &seq_auth);
    }
    if (IS_ENABLED(CONFIG_BLE_MESH_NODE) && bt_mesh_is_provisioned()) {
        if (IS_ENABLED(CONFIG_BLE_MESH_LOW_POWER) &&
                (bt_mesh_lpn_timer() ||
                 (bt_mesh_lpn_established() && bt_mesh_lpn_waiting_update()))) {
            bt_mesh_lpn_msg_received(rx);
        }
    }

    net_buf_simple_restore(buf, &state);

    if (IS_ENABLED(CONFIG_BLE_MESH_NODE) && bt_mesh_is_provisioned()) {
        if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND) && rx->friend_match && !err) {
            if (seq_auth == TRANS_SEQ_AUTH_NVAL) {
                bt_mesh_friend_enqueue_rx(rx, pdu_type, ((void*)0),
                                          seg_count, buf);
            } else {
                bt_mesh_friend_enqueue_rx(rx, pdu_type, &seq_auth,
                                          seg_count, buf);
            }
        }
    }

    return err;
}
