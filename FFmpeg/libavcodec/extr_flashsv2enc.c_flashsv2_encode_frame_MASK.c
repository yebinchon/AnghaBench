#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ frame_number; scalar_t__ gop_size; scalar_t__ keyint_min; TYPE_1__* priv_data; } ;
struct TYPE_18__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_17__ {int size; int /*<<< orphan*/  flags; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {scalar_t__ last_key_frame; int /*<<< orphan*/  dist; scalar_t__ use15_7; scalar_t__ frame_size; } ;
typedef  TYPE_1__ FlashSV2Context ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_INPUT_BUFFER_MIN_SIZE ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC1 (TYPE_4__*,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__* const,int*) ; 
 int FUNC5 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, AVPacket *pkt,
                                 const AVFrame *p, int *got_packet)
{
    FlashSV2Context *const s = avctx->priv_data;
    int res;
    int keyframe = 0;

    if ((res = FUNC1(avctx, pkt, s->frame_size + AV_INPUT_BUFFER_MIN_SIZE, 0)) < 0)
        return res;

    /* First frame needs to be a keyframe */
    if (avctx->frame_number == 0)
        keyframe = 1;

    /* Check the placement of keyframes */
    if (avctx->gop_size > 0) {
        if (avctx->frame_number >= s->last_key_frame + avctx->gop_size)
            keyframe = 1;
    }

    if (!keyframe
        && avctx->frame_number > s->last_key_frame + avctx->keyint_min) {
        FUNC4(s, &keyframe);
        if (keyframe)
            FUNC0(avctx, AV_LOG_DEBUG, "Recommending key frame at frame %d\n", avctx->frame_number);
    }

    if (keyframe) {
        res = FUNC5(s, p->data[0], p->linesize[0]);
        if (res)
            return res;
    }

    if (s->use15_7)
        s->dist = FUNC3(s);

    res = FUNC6(s, p->data[0], p->linesize[0], pkt->data, pkt->size, keyframe);

    if (keyframe) {
        FUNC2(s);
        s->last_key_frame = avctx->frame_number;
        pkt->flags |= AV_PKT_FLAG_KEY;
        FUNC0(avctx, AV_LOG_DEBUG, "Inserting key frame at frame %d\n", avctx->frame_number);
    }

    pkt->size = res;
    *got_packet = 1;

    return 0;
}