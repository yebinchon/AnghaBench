
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64_t ;
struct seg_rx {scalar_t__ src; scalar_t__ dst; scalar_t__ const seq_auth; scalar_t__ in_use; } ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ recv_dst; } ;
struct bt_mesh_net_rx {TYPE_1__ ctx; } ;


 int ARRAY_SIZE (struct seg_rx*) ;
 int BT_WARN (char*,scalar_t__) ;
 struct seg_rx* seg_rx ;
 int seg_rx_reset (struct seg_rx*,int) ;

__attribute__((used)) static struct seg_rx *seg_rx_find(struct bt_mesh_net_rx *net_rx,
                                  const u64_t *seq_auth)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(seg_rx); i++) {
        struct seg_rx *rx = &seg_rx[i];

        if (rx->src != net_rx->ctx.addr ||
                rx->dst != net_rx->ctx.recv_dst) {
            continue;
        }







        if (rx->seq_auth == *seq_auth) {
            return rx;
        }

        if (rx->in_use) {
            BT_WARN("Duplicate SDU from src 0x%04x",
                    net_rx->ctx.addr);




            seg_rx_reset(rx, 1);


            return ((void*)0);
        }
    }

    return ((void*)0);
}
