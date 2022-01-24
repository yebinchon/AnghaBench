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
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_16__ {int channels; int frame_size; TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__* data; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int /*<<< orphan*/  frame_size; } ;
struct TYPE_13__ {int pkt_frame_count; int frames_per_packet; int /*<<< orphan*/  afq; int /*<<< orphan*/  bits; int /*<<< orphan*/  enc_state; TYPE_1__ header; } ;
typedef  TYPE_2__ LibSpeexEncContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, AVPacket *avpkt,
                        const AVFrame *frame, int *got_packet_ptr)
{
    LibSpeexEncContext *s = avctx->priv_data;
    int16_t *samples      = frame ? (int16_t *)frame->data[0] : NULL;
    int ret;

    if (samples) {
        /* encode Speex frame */
        if (avctx->channels == 2)
            FUNC8(samples, s->header.frame_size, &s->bits);
        FUNC7(s->enc_state, samples, &s->bits);
        s->pkt_frame_count++;
        if ((ret = FUNC0(&s->afq, frame)) < 0)
            return ret;
    } else {
        /* handle end-of-stream */
        if (!s->pkt_frame_count)
            return 0;
        /* add extra terminator codes for unused frames in last packet */
        while (s->pkt_frame_count < s->frames_per_packet) {
            FUNC4(&s->bits, 15, 5);
            s->pkt_frame_count++;
        }
    }

    /* write output if all frames for the packet have been encoded */
    if (s->pkt_frame_count == s->frames_per_packet) {
        s->pkt_frame_count = 0;
        if ((ret = FUNC2(avctx, avpkt, FUNC3(&s->bits), 0)) < 0)
            return ret;
        ret = FUNC6(&s->bits, avpkt->data, avpkt->size);
        FUNC5(&s->bits);

        /* Get the next frame pts/duration */
        FUNC1(&s->afq, s->frames_per_packet * avctx->frame_size,
                           &avpkt->pts, &avpkt->duration);

        avpkt->size = ret;
        *got_packet_ptr = 1;
        return 0;
    }
    return 0;
}