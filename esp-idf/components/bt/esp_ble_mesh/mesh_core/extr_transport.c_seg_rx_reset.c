
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_rx {scalar_t__ block; unsigned int seq_auth; unsigned int in_use; void* dst; void* src; int * sub; int seg_n; scalar_t__ obo; int ack; } ;


 void* BLE_MESH_ADDR_UNASSIGNED ;
 scalar_t__ BLOCK_COMPLETE (int ) ;
 int BT_DBG (char*,struct seg_rx*) ;
 int BT_WARN (char*) ;
 int CONFIG_BLE_MESH_FRIEND ;
 scalar_t__ IS_ENABLED (int ) ;
 int bt_mesh_friend_clear_incomplete (int *,void*,void*,unsigned int*) ;
 int k_delayed_work_cancel (int *) ;

__attribute__((used)) static void seg_rx_reset(struct seg_rx *rx, bool full_reset)
{
    BT_DBG("rx %p", rx);

    k_delayed_work_cancel(&rx->ack);

    if (IS_ENABLED(CONFIG_BLE_MESH_FRIEND) && rx->obo &&
            rx->block != BLOCK_COMPLETE(rx->seg_n)) {
        BT_WARN("Clearing incomplete buffers from Friend queue");
        bt_mesh_friend_clear_incomplete(rx->sub, rx->src, rx->dst,
                                        &rx->seq_auth);
    }

    rx->in_use = 0U;





    if (full_reset) {
        rx->seq_auth = 0U;
        rx->sub = ((void*)0);
        rx->src = BLE_MESH_ADDR_UNASSIGNED;
        rx->dst = BLE_MESH_ADDR_UNASSIGNED;
    }
}
