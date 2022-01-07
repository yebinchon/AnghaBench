
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef void* u16_t ;
struct bt_mesh_last_msg_info {int timestamp; void* dst; void* src; int tid; } ;
typedef int s64_t ;


 int BLE_MESH_ADDR_IS_UNICAST (void*) ;

void bt_mesh_server_update_last_msg(struct bt_mesh_last_msg_info *last,
                                    u8_t tid, u16_t src, u16_t dst, s64_t *now)
{

    if (!BLE_MESH_ADDR_IS_UNICAST(dst)) {
        return;
    }

    last->tid = tid;
    last->src = src;
    last->dst = dst;
    last->timestamp = *now;
    return;
}
