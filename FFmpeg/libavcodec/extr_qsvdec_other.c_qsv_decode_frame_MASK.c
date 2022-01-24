#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_ref ;
struct TYPE_17__ {scalar_t__ reinit_flag; } ;
struct TYPE_16__ {TYPE_1__* priv_data; } ;
struct TYPE_15__ {int size; int data; int /*<<< orphan*/  member_0; } ;
struct TYPE_14__ {TYPE_2__ input_ref; TYPE_7__ qsv; int /*<<< orphan*/  packet_fifo; } ;
typedef  TYPE_1__ QSVOtherContext ;
typedef  TYPE_2__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ *,int*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, void *data,
                            int *got_frame, AVPacket *avpkt)
{
    QSVOtherContext *s = avctx->priv_data;
    AVFrame *frame    = data;
    int ret;

    /* buffer the input packet */
    if (avpkt->size) {
        AVPacket input_ref = { 0 };

        if (FUNC4(s->packet_fifo) < sizeof(input_ref)) {
            ret = FUNC2(s->packet_fifo,
                                   FUNC3(s->packet_fifo) + sizeof(input_ref));
            if (ret < 0)
                return ret;
        }

        ret = FUNC5(&input_ref, avpkt);
        if (ret < 0)
            return ret;
        FUNC1(s->packet_fifo, &input_ref, sizeof(input_ref), NULL);
    }

    /* process buffered data */
    while (!*got_frame) {
        if (s->input_ref.size <= 0) {
            /* no more data */
            if (FUNC3(s->packet_fifo) < sizeof(AVPacket))
                return avpkt->size ? avpkt->size : FUNC7(avctx, &s->qsv, frame, got_frame, avpkt);
            /* in progress of reinit, no read from fifo and keep the buffer_pkt */
            if (!s->qsv.reinit_flag) {
                FUNC6(&s->input_ref);
                FUNC0(s->packet_fifo, &s->input_ref, sizeof(s->input_ref), NULL);
            }
        }

        ret = FUNC7(avctx, &s->qsv, frame, got_frame, &s->input_ref);
        if (ret < 0) {
            /* Drop input packet when failed to decode the packet. Otherwise,
               the decoder will keep decoding the failure packet. */
            FUNC6(&s->input_ref);

            return ret;
        }
        if (s->qsv.reinit_flag)
            continue;

        s->input_ref.size -= ret;
        s->input_ref.data += ret;
    }

    return avpkt->size;
}