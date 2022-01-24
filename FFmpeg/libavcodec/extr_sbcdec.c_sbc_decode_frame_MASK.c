#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int blocks; int subbands; int /*<<< orphan*/  channels; } ;
struct TYPE_15__ {int /*<<< orphan*/  channels; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; int /*<<< orphan*/  format; int /*<<< orphan*/  channels; } ;
struct TYPE_13__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {TYPE_5__ frame; int /*<<< orphan*/  dsp; } ;
typedef  TYPE_1__ SBCDecContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16P ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx,
                            void *data, int *got_frame_ptr,
                            AVPacket *avpkt)
{
    SBCDecContext *sbc = avctx->priv_data;
    AVFrame *frame = data;
    int ret, frame_length;

    if (!sbc)
        return FUNC0(EIO);

    frame_length = FUNC3(avpkt->data, &sbc->frame, avpkt->size);
    if (frame_length <= 0)
        return frame_length;

    avctx->channels =
    frame->channels = sbc->frame.channels;
    frame->format = AV_SAMPLE_FMT_S16P;
    frame->nb_samples = sbc->frame.blocks * sbc->frame.subbands;
    if ((ret = FUNC1(avctx, frame, 0)) < 0)
        return ret;

    FUNC2(&sbc->dsp, &sbc->frame, frame);

    *got_frame_ptr = 1;

    return frame_length;
}