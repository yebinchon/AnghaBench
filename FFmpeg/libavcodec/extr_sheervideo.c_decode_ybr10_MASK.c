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
struct TYPE_10__ {int width; int height; TYPE_2__* priv_data; } ;
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
    uint16_t *dst_y, *dst_u, *dst_v;
    int x, y;

    dst_y = (uint16_t *)p->data[0];
    dst_u = (uint16_t *)p->data[1];
    dst_v = (uint16_t *)p->data[2];

    if (FUNC1(gb)) {
        for (x = 0; x < avctx->width; x++) {
            dst_y[x] = FUNC0(gb, 10);
            dst_u[x] = FUNC0(gb, 10);
            dst_v[x] = FUNC0(gb, 10);
        }
    } else {
        int pred[4] = { 502, 512, 512, 512 };

        for (x = 0; x < avctx->width; x++) {
            int y, u, v;

            y = FUNC2(gb, s->vlc[0].table, s->vlc[0].bits, 2);
            u = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);
            v = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);

            dst_y[x] = pred[0] = (y + pred[0]) & 0x3ff;
            dst_u[x] = pred[1] = (u + pred[1]) & 0x3ff;
            dst_v[x] = pred[2] = (v + pred[2]) & 0x3ff;
        }
    }

    dst_y += p->linesize[0] / 2;
    dst_u += p->linesize[1] / 2;
    dst_v += p->linesize[2] / 2;

    for (y = 1; y < avctx->height; y++) {
        if (FUNC1(gb)) {
            for (x = 0; x < avctx->width; x++) {
                dst_y[x] = FUNC0(gb, 10);
                dst_u[x] = FUNC0(gb, 10);
                dst_v[x] = FUNC0(gb, 10);
            }
        } else {
            int pred_TL[4], pred_L[4], pred_T[4];
            int y, u, v;

            pred_TL[0] = pred_L[0] = dst_y[-p->linesize[0] / 2];
            pred_TL[1] = pred_L[1] = dst_u[-p->linesize[1] / 2];
            pred_TL[2] = pred_L[2] = dst_v[-p->linesize[2] / 2];

            for (x = 0; x < avctx->width; x++) {
                pred_T[0] = dst_y[-p->linesize[0] / 2 + x];
                pred_T[1] = dst_u[-p->linesize[1] / 2 + x];
                pred_T[2] = dst_v[-p->linesize[2] / 2 + x];

                y = FUNC2(gb, s->vlc[0].table, s->vlc[0].bits, 2);
                u = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);
                v = FUNC2(gb, s->vlc[1].table, s->vlc[1].bits, 2);

                dst_y[x] = pred_L[0] = (y + ((3 * (pred_T[0] + pred_L[0]) - 2 * pred_TL[0]) >> 2)) & 0x3ff;
                dst_u[x] = pred_L[1] = (u + ((3 * (pred_T[1] + pred_L[1]) - 2 * pred_TL[1]) >> 2)) & 0x3ff;
                dst_v[x] = pred_L[2] = (v + ((3 * (pred_T[2] + pred_L[2]) - 2 * pred_TL[2]) >> 2)) & 0x3ff;

                pred_TL[0] = pred_T[0];
                pred_TL[1] = pred_T[1];
                pred_TL[2] = pred_T[2];
            }
        }

        dst_y += p->linesize[0] / 2;
        dst_u += p->linesize[1] / 2;
        dst_v += p->linesize[2] / 2;
    }
}