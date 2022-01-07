
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_buf {int len; int data; } ;
struct bt_mesh_send_cb {int dummy; } ;
struct TYPE_4__ {int relay; void* arg; } ;
typedef TYPE_1__ bt_mesh_msg_t ;
struct TYPE_5__ {unsigned int busy; void* cb_data; struct bt_mesh_send_cb const* cb; int type; } ;


 TYPE_3__* BLE_MESH_ADV (struct net_buf*) ;
 int BT_DBG (char*,int ,int ,int ) ;
 int bt_hex (int ,int ) ;
 int bt_mesh_task_post (TYPE_1__*,int ) ;
 scalar_t__ net_buf_ref (struct net_buf*) ;
 int portMAX_DELAY ;

void bt_mesh_adv_send(struct net_buf *buf, const struct bt_mesh_send_cb *cb,
                      void *cb_data)
{
    bt_mesh_msg_t msg = {
        .relay = 0,
    };

    BT_DBG("type 0x%02x len %u: %s", BLE_MESH_ADV(buf)->type, buf->len,
           bt_hex(buf->data, buf->len));

    BLE_MESH_ADV(buf)->cb = cb;
    BLE_MESH_ADV(buf)->cb_data = cb_data;
    BLE_MESH_ADV(buf)->busy = 1U;

    msg.arg = (void *)net_buf_ref(buf);
    bt_mesh_task_post(&msg, portMAX_DELAY);
}
