
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef int u64_t ;
struct seg_rx {int in_use; unsigned int block; int dst; int src; int ttl; int hdr; int seg_n; int seq_auth; int ctl; int sub; int buf; } ;
struct TYPE_2__ {int recv_dst; int addr; int send_ttl; } ;
struct bt_mesh_net_rx {TYPE_1__ ctx; int ctl; int sub; } ;


 int ARRAY_SIZE (struct seg_rx*) ;
 int BLOCK_COMPLETE (int ) ;
 int BT_DBG (char*,int ) ;
 int net_buf_simple_reset (int *) ;
 struct seg_rx* seg_rx ;

__attribute__((used)) static struct seg_rx *seg_rx_alloc(struct bt_mesh_net_rx *net_rx,
                                   const u8_t *hdr, const u64_t *seq_auth,
                                   u8_t seg_n)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(seg_rx); i++) {
        struct seg_rx *rx = &seg_rx[i];

        if (rx->in_use) {
            continue;
        }

        rx->in_use = 1U;
        net_buf_simple_reset(&rx->buf);
        rx->sub = net_rx->sub;
        rx->ctl = net_rx->ctl;
        rx->seq_auth = *seq_auth;
        rx->seg_n = seg_n;
        rx->hdr = *hdr;
        rx->ttl = net_rx->ctx.send_ttl;
        rx->src = net_rx->ctx.addr;
        rx->dst = net_rx->ctx.recv_dst;
        rx->block = 0U;

        BT_DBG("New RX context. Block Complete 0x%08x",
               BLOCK_COMPLETE(seg_n));

        return rx;
    }

    return ((void*)0);
}
