#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {int block_align; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_12__ {int /*<<< orphan*/  gain_lpc; int /*<<< orphan*/  gain_rec; int /*<<< orphan*/ * gain_hist; int /*<<< orphan*/  sp_lpc; int /*<<< orphan*/  sp_rec; int /*<<< orphan*/ * sp_hist; } ;
typedef  TYPE_1__ RA288Context ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int RA288_BLOCKS_PER_FRAME ; 
 int RA288_BLOCK_SIZE ; 
 float* amptable ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,float,int) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gain_bw_tab ; 
 int /*<<< orphan*/  gain_window ; 
 size_t FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC6 (float*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  syn_bw_tab ; 
 int /*<<< orphan*/  syn_window ; 

__attribute__((used)) static int FUNC7(AVCodecContext * avctx, void *data,
                              int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame     = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    float *out;
    int i, ret;
    RA288Context *ractx = avctx->priv_data;
    GetBitContext gb;

    if (buf_size < avctx->block_align) {
        FUNC0(avctx, AV_LOG_ERROR,
               "Error! Input buffer is too small [%d<%d]\n",
               buf_size, avctx->block_align);
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC5(&gb, buf, avctx->block_align);
    if (ret < 0)
        return ret;

    /* get output buffer */
    frame->nb_samples = RA288_BLOCK_SIZE * RA288_BLOCKS_PER_FRAME;
    if ((ret = FUNC3(avctx, frame, 0)) < 0)
        return ret;
    out = (float *)frame->data[0];

    for (i=0; i < RA288_BLOCKS_PER_FRAME; i++) {
        float gain = amptable[FUNC4(&gb, 3)];
        int cb_coef = FUNC4(&gb, 6 + (i&1));

        FUNC2(ractx, gain, cb_coef);

        FUNC6(out, &ractx->sp_hist[70 + 36], RA288_BLOCK_SIZE * sizeof(*out));
        out += RA288_BLOCK_SIZE;

        if ((i & 7) == 3) {
            FUNC1(ractx, ractx->sp_hist, ractx->sp_rec, syn_window,
                            ractx->sp_lpc, syn_bw_tab, 36, 40, 35, 70);

            FUNC1(ractx, ractx->gain_hist, ractx->gain_rec, gain_window,
                            ractx->gain_lpc, gain_bw_tab, 10, 8, 20, 28);
        }
    }

    *got_frame_ptr = 1;

    return avctx->block_align;
}