
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8_t ;
typedef int u64_t ;
struct net_buf_simple {int len; } ;
struct TYPE_4__ {scalar_t__ addr; } ;
struct bt_mesh_net_rx {int friend_cred; TYPE_1__ ctx; int local_match; } ;
struct TYPE_5__ {scalar_t__ frnd; } ;
struct TYPE_6__ {TYPE_2__ lpn; } ;


 int BT_DBG (char*,int,int ) ;
 int BT_WARN (char*,...) ;
 int CONFIG_BLE_MESH_FRIEND ;
 int CONFIG_BLE_MESH_NODE ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ENABLED (int ) ;
 int TRANS_CTL_OP (int*) ;



 int TRANS_CTL_OP_FRIEND_OFFER ;







 TYPE_3__ bt_mesh ;
 int bt_mesh_friend_clear (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_friend_clear_cfm (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_friend_poll (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_friend_req (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_friend_sub_add (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_friend_sub_rem (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 scalar_t__ bt_mesh_is_provisioned () ;
 int bt_mesh_lpn_established () ;
 int bt_mesh_lpn_friend_clear_cfm (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_lpn_friend_offer (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_lpn_friend_sub_cfm (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int bt_mesh_lpn_friend_update (struct bt_mesh_net_rx*,struct net_buf_simple*) ;
 int trans_ack (struct bt_mesh_net_rx*,int,struct net_buf_simple*,int *) ;
 int trans_heartbeat (struct bt_mesh_net_rx*,struct net_buf_simple*) ;

__attribute__((used)) static int ctl_recv(struct bt_mesh_net_rx *rx, u8_t hdr,
                    struct net_buf_simple *buf, u64_t *seq_auth)
{
    u8_t ctl_op = TRANS_CTL_OP(&hdr);

    BT_DBG("OpCode 0x%02x len %u", ctl_op, buf->len);

    switch (ctl_op) {
    case 137:
        return trans_ack(rx, hdr, buf, seq_auth);
    case 128:
        return trans_heartbeat(rx, buf);
    }


    if (!rx->local_match) {
        return 0;
    }

    if (IS_ENABLED(CONFIG_BLE_MESH_NODE) && bt_mesh_is_provisioned()) {
        if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND) && !bt_mesh_lpn_established()) {
            switch (ctl_op) {
            case 134:
                return bt_mesh_friend_poll(rx, buf);
            case 133:
                return bt_mesh_friend_req(rx, buf);
            case 136:
                return bt_mesh_friend_clear(rx, buf);
            case 135:
                return bt_mesh_friend_clear_cfm(rx, buf);
            case 132:
                return bt_mesh_friend_sub_add(rx, buf);
            case 130:
                return bt_mesh_friend_sub_rem(rx, buf);
            }
        }
    }

    BT_WARN("Unhandled TransOpCode 0x%02x", ctl_op);

    return -ENOENT;
}
