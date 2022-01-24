#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_10__ {int height; int width; TYPE_2__* priv_data; } ;
struct TYPE_9__ {int* linesize; scalar_t__* data; } ;
struct TYPE_8__ {TYPE_1__* vlc; } ;
struct TYPE_7__ {int /*<<< orphan*/  bits; int /*<<< orphan*/  table; } ;
typedef  TYPE_2__ SheerVideoContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(AVCodecContext *avctx, AVFrame *p, GetBitContext *gb)
{
    SheerVideoContext *s = avctx->priv_data;
    uint16_t *dst_y, *dst_u, *dst_v, *dst_a;
    int x, y;

    dst_a = (uint16_t *)p->data[3];
    dst_y = (uint16_t *)p->data[0];
    dst_u = (uint16_t *)p->data[1];
    dst_v = (uint16_t *)p->data[2];

    for (y = 0; y < avctx->height; y++) {
        if (FUNC1(gb)) {
            for (x = 0; x < avctx->width; x++) {
                dst_a[x] = FUNC0(gb, 10);
                dst_y[x] = FUNC0(gb, 10);
                dst_u[x] = FUNC0(gb, 10);
                dst_v[x] = FUNC0(gb, 10);
            }
        } else {
            int pred[4] = { 502, 512, 512, 502 };

            for (x = 0; x < avctx->width; x++) {
                int y, u, v, a;

                a = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);
                y = FUNC2(gb, s->vlc[0].table, s->vlc[0].bits, 2);
                u = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);
                v = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);

                dst_a[x] = pred[3] = (a + pred[3]) & 0x3ff;
                dst_y[x] = pred[0] = (y + pred[0]) & 0x3ff;
                dst_u[x] = pred[1] = (u + pred[1]) & 0x3ff;
                dst_v[x] = pred[2] = (v + pred[2]) & 0x3ff;
            }
        }

        dst_y += p->linesize[0] / 2;
        dst_u += p->linesize[1] / 2;
        dst_v += p->linesize[2] / 2;
        dst_a += p->linesize[3] / 2;
    }
}