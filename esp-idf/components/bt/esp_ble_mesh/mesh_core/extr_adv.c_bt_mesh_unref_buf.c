
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_buf {int dummy; } ;
struct TYPE_4__ {scalar_t__ arg; } ;
typedef TYPE_1__ bt_mesh_msg_t ;
struct TYPE_5__ {unsigned int busy; } ;


 TYPE_3__* BLE_MESH_ADV (struct net_buf*) ;
 int net_buf_unref (struct net_buf*) ;

__attribute__((used)) static void bt_mesh_unref_buf(bt_mesh_msg_t *msg)
{
    struct net_buf *buf;

    if (msg->arg) {
        buf = (struct net_buf *)msg->arg;
        BLE_MESH_ADV(buf)->busy = 0U;
        net_buf_unref(buf);
    }

    return;
}
