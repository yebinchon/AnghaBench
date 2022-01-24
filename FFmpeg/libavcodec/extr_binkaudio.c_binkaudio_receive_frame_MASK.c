#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_17__ {int channels; TYPE_1__* codec; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int nb_samples; scalar_t__ extended_data; } ;
struct TYPE_15__ {int frame_len; int block_size; TYPE_8__* pkt; int /*<<< orphan*/  gb; } ;
struct TYPE_14__ {scalar_t__ id; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ BinkAudioContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AV_CODEC_ID_BINKAUDIO_DCT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,float**,int) ; 
 int FUNC3 (TYPE_4__*,TYPE_8__*) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, AVFrame *frame)
{
    BinkAudioContext *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    int ret;

    if (!s->pkt->data) {
        ret = FUNC3(avctx, s->pkt);
        if (ret < 0)
            return ret;

        if (s->pkt->size < 4) {
            FUNC0(avctx, AV_LOG_ERROR, "Packet is too small\n");
            ret = AVERROR_INVALIDDATA;
            goto fail;
        }

        ret = FUNC7(gb, s->pkt->data, s->pkt->size);
        if (ret < 0)
            goto fail;

        /* skip reported size */
        FUNC9(gb, 32);
    }

    /* get output buffer */
    frame->nb_samples = s->frame_len;
    if ((ret = FUNC4(avctx, frame, 0)) < 0)
        return ret;

    if (FUNC2(s, (float **)frame->extended_data,
                     avctx->codec->id == AV_CODEC_ID_BINKAUDIO_DCT)) {
        FUNC0(avctx, AV_LOG_ERROR, "Incomplete packet\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC5(gb);
    if (!FUNC6(gb)) {
        FUNC8(gb, 0, sizeof(*gb));
        FUNC1(s->pkt);
    }

    frame->nb_samples = s->block_size / avctx->channels;

    return 0;
fail:
    FUNC1(s->pkt);
    return ret;
}