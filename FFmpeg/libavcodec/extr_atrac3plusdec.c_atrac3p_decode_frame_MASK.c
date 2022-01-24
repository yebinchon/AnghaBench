#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int unit_type; } ;
struct TYPE_22__ {int num_channel_blocks; int* channel_blocks; int /*<<< orphan*/ * outp_buf; TYPE_6__* ch_units; int /*<<< orphan*/  samples; int /*<<< orphan*/  gb; } ;
struct TYPE_21__ {scalar_t__ codec_id; int /*<<< orphan*/  block_align; TYPE_4__* priv_data; } ;
struct TYPE_20__ {int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_19__ {int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;
typedef  TYPE_4__ ATRAC3PContext ;

/* Variables and functions */
 int ATRAC3P_FRAME_SAMPLES ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 scalar_t__ AV_CODEC_ID_ATRAC3P ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int CH_UNIT_EXTENSION ; 
 int CH_UNIT_TERMINATOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_6__*,int,TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_6__*,int,TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(AVCodecContext *avctx, void *data,
                                int *got_frame_ptr, AVPacket *avpkt)
{
    ATRAC3PContext *ctx = avctx->priv_data;
    AVFrame *frame      = data;
    int i, ret, ch_unit_id, ch_block = 0, out_ch_index = 0, channels_to_process;
    float **samples_p = (float **)frame->extended_data;

    frame->nb_samples = ATRAC3P_FRAME_SAMPLES;
    if ((ret = FUNC5(avctx, frame, 0)) < 0)
        return ret;

    if ((ret = FUNC9(&ctx->gb, avpkt->data, avpkt->size)) < 0)
        return ret;

    if (FUNC7(&ctx->gb)) {
        FUNC1(avctx, AV_LOG_ERROR, "Invalid start bit!\n");
        return AVERROR_INVALIDDATA;
    }

    while (FUNC8(&ctx->gb) >= 2 &&
           (ch_unit_id = FUNC6(&ctx->gb, 2)) != CH_UNIT_TERMINATOR) {
        if (ch_unit_id == CH_UNIT_EXTENSION) {
            FUNC2(avctx, "Channel unit extension");
            return AVERROR_PATCHWELCOME;
        }
        if (ch_block >= ctx->num_channel_blocks ||
            ctx->channel_blocks[ch_block] != ch_unit_id) {
            FUNC1(avctx, AV_LOG_ERROR,
                   "Frame data doesn't match channel configuration!\n");
            return AVERROR_INVALIDDATA;
        }

        ctx->ch_units[ch_block].unit_type = ch_unit_id;
        channels_to_process               = ch_unit_id + 1;

        if ((ret = FUNC4(&ctx->gb,
                                                  &ctx->ch_units[ch_block],
                                                  channels_to_process,
                                                  avctx)) < 0)
            return ret;

        FUNC3(ctx, &ctx->ch_units[ch_block], ctx->samples,
                                 channels_to_process, avctx);
        FUNC11(ctx, &ctx->ch_units[ch_block],
                          channels_to_process, avctx);

        for (i = 0; i < channels_to_process; i++)
            FUNC10(samples_p[out_ch_index + i], ctx->outp_buf[i],
                   ATRAC3P_FRAME_SAMPLES * sizeof(**samples_p));

        ch_block++;
        out_ch_index += channels_to_process;
    }

    *got_frame_ptr = 1;

    return avctx->codec_id == AV_CODEC_ID_ATRAC3P ? FUNC0(avctx->block_align, avpkt->size) : avpkt->size;
}