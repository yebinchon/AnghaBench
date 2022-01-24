#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_13__ {scalar_t__ frame_size; TYPE_1__* priv_data; } ;
struct TYPE_12__ {scalar_t__ nb_samples; scalar_t__* data; } ;
struct TYPE_11__ {int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  size; } ;
struct TYPE_10__ {int /*<<< orphan*/  afq; scalar_t__ got_output; int /*<<< orphan*/  wv; int /*<<< orphan*/  user_size; TYPE_2__* pkt; } ;
typedef  TYPE_1__ LibWavpackContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, AVPacket *pkt,
                                const AVFrame *frame, int *got_output)
{
    LibWavpackContext *s = avctx->priv_data;
    int ret;

    s->got_output = 0;
    s->pkt        = pkt;
    s->user_size  = pkt->size;

    if (frame) {
        ret = FUNC4(&s->afq, frame);
        if (ret < 0)
            return ret;

        ret = FUNC2(s->wv, (int32_t*)frame->data[0], frame->nb_samples);
        if (!ret) {
            FUNC3(avctx, AV_LOG_ERROR, "Error encoding a frame: %s\n",
                   FUNC1(s->wv));
            return AVERROR_UNKNOWN;
        }
    }

    if (!s->got_output &&
        (!frame || frame->nb_samples < avctx->frame_size)) {
        ret = FUNC0(s->wv);
        if (!ret) {
            FUNC3(avctx, AV_LOG_ERROR, "Error flushing the encoder: %s\n",
                   FUNC1(s->wv));
            return AVERROR_UNKNOWN;
        }
    }

    if (s->got_output) {
        FUNC5(&s->afq, avctx->frame_size, &pkt->pts, &pkt->duration);
        *got_output = 1;
    }

    return 0;
}