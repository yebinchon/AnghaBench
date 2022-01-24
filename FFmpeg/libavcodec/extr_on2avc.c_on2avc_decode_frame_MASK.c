#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_21__ {TYPE_1__* priv_data; } ;
struct TYPE_20__ {int nb_samples; } ;
struct TYPE_19__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int /*<<< orphan*/  const* buffer; } ;
struct TYPE_17__ {scalar_t__ is_av500; } ;
typedef  TYPE_1__ On2AVCContext ;
typedef  TYPE_2__ GetByteContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int ON2AVC_SUBFRAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,int,TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext * avctx, void *data,
                               int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame     = data;
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    On2AVCContext *c   = avctx->priv_data;
    GetByteContext gb;
    int num_frames = 0, frame_size, audio_off;
    int ret;

    if (c->is_av500) {
        /* get output buffer */
        frame->nb_samples = ON2AVC_SUBFRAME_SIZE;
        if ((ret = FUNC5(avctx, frame, 0)) < 0)
            return ret;

        if ((ret = FUNC6(c, buf, buf_size, frame, 0)) < 0)
            return ret;
    } else {
        FUNC3(&gb, buf, buf_size);
        while (FUNC1(&gb) > 2) {
            frame_size = FUNC2(&gb);
            if (!frame_size || frame_size > FUNC1(&gb)) {
                FUNC0(avctx, AV_LOG_ERROR, "Invalid subframe size %d\n",
                       frame_size);
                return AVERROR_INVALIDDATA;
            }
            num_frames++;
            FUNC4(&gb, frame_size);
        }
        if (!num_frames) {
            FUNC0(avctx, AV_LOG_ERROR, "No subframes present\n");
            return AVERROR_INVALIDDATA;
        }

        /* get output buffer */
        frame->nb_samples = ON2AVC_SUBFRAME_SIZE * num_frames;
        if ((ret = FUNC5(avctx, frame, 0)) < 0)
            return ret;

        audio_off = 0;
        FUNC3(&gb, buf, buf_size);
        while (FUNC1(&gb) > 2) {
            frame_size = FUNC2(&gb);
            if ((ret = FUNC6(c, gb.buffer, frame_size,
                                              frame, audio_off)) < 0)
                return ret;
            audio_off += ON2AVC_SUBFRAME_SIZE;
            FUNC4(&gb, frame_size);
        }
    }

    *got_frame_ptr = 1;

    return buf_size;
}