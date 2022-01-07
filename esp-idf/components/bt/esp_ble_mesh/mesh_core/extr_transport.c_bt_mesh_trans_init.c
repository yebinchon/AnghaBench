
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ __buf; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ buf; int ack; int retransmit; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int CONFIG_BLE_MESH_RX_SDU_MAX ;
 int k_delayed_work_init (int *,int ) ;
 int seg_ack ;
 int seg_retransmit ;
 TYPE_2__* seg_rx ;
 scalar_t__ seg_rx_buf_data ;
 TYPE_2__* seg_tx ;

void bt_mesh_trans_init(void)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(seg_tx); i++) {
        k_delayed_work_init(&seg_tx[i].retransmit, seg_retransmit);
    }

    for (i = 0; i < ARRAY_SIZE(seg_rx); i++) {
        k_delayed_work_init(&seg_rx[i].ack, seg_ack);
        seg_rx[i].buf.__buf = (seg_rx_buf_data +
                               (i * CONFIG_BLE_MESH_RX_SDU_MAX));
        seg_rx[i].buf.data = seg_rx[i].buf.__buf;
    }
}
