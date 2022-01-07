
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seg_tx {unsigned int seq_auth; unsigned int nack_count; int seg_n; TYPE_1__** seg; int dst; int * sub; int * cb_data; int * cb; int retransmit; } ;
struct TYPE_4__ {int iv_index; int flags; } ;
struct TYPE_3__ {int ref; } ;


 int BLE_MESH_ADDR_UNASSIGNED ;
 int BLE_MESH_IVU_PENDING ;
 int BT_DBG (char*) ;
 TYPE_2__ bt_mesh ;
 scalar_t__ bt_mesh_atomic_test_and_clear_bit (int ,int ) ;
 scalar_t__ bt_mesh_net_iv_update (int ,int) ;
 int bt_mesh_net_sec_update (int *) ;
 int k_delayed_work_cancel (int *) ;
 int net_buf_unref (TYPE_1__*) ;

__attribute__((used)) static void seg_tx_reset(struct seg_tx *tx)
{
    int i;

    k_delayed_work_cancel(&tx->retransmit);

    tx->cb = ((void*)0);
    tx->cb_data = ((void*)0);
    tx->seq_auth = 0U;
    tx->sub = ((void*)0);
    tx->dst = BLE_MESH_ADDR_UNASSIGNED;

    if (!tx->nack_count) {
        return;
    }

    for (i = 0; i <= tx->seg_n; i++) {
        if (!tx->seg[i]) {
            continue;
        }




        if (tx->seg[i]->ref > 1) {
            tx->seg[i]->ref = 1;
        }
        net_buf_unref(tx->seg[i]);
        tx->seg[i] = ((void*)0);
    }

    tx->nack_count = 0U;

    if (bt_mesh_atomic_test_and_clear_bit(bt_mesh.flags, BLE_MESH_IVU_PENDING)) {
        BT_DBG("Proceding with pending IV Update");



        if (bt_mesh_net_iv_update(bt_mesh.iv_index, 0)) {
            bt_mesh_net_sec_update(((void*)0));
        }
    }
}
