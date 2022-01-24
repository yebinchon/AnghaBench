#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int buf; } ;
struct TYPE_19__ {int block_len_bits; int frame_len_bits; int block_len; double** coefs; TYPE_5__ pb; scalar_t__ ms_stereo; } ;
typedef  TYPE_1__ WMACodecContext ;
struct TYPE_22__ {int block_align; int /*<<< orphan*/  initial_padding; TYPE_1__* priv_data; } ;
struct TYPE_21__ {scalar_t__ pts; } ;
struct TYPE_20__ {int size; scalar_t__ pts; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int MAX_CODED_SUPERFRAME_SIZE ; 
 int FUNC1 (TYPE_4__*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*,float**,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,char) ; 
 int FUNC9 (TYPE_5__*) ; 
 int FUNC10 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    WMACodecContext *s = avctx->priv_data;
    int i, total_gain, ret, error;

    s->block_len_bits = s->frame_len_bits; // required by non variable block len
    s->block_len      = 1 << s->block_len_bits;

    ret = FUNC1(avctx, frame);

    if (ret < 0)
        return ret;

    if (s->ms_stereo) {
        float a, b;
        int i;

        for (i = 0; i < s->block_len; i++) {
            a              = s->coefs[0][i] * 0.5;
            b              = s->coefs[1][i] * 0.5;
            s->coefs[0][i] = a + b;
            s->coefs[1][i] = a - b;
        }
    }

    if ((ret = FUNC5(avctx, avpkt, 2 * MAX_CODED_SUPERFRAME_SIZE, 0)) < 0)
        return ret;

    total_gain = 128;
    for (i = 64; i; i >>= 1) {
        error = FUNC4(s, s->coefs, avpkt->data, avpkt->size,
                                 total_gain - i);
        if (error <= 0)
            total_gain -= i;
    }

    while(total_gain <= 128 && error > 0)
        error = FUNC4(s, s->coefs, avpkt->data, avpkt->size, total_gain++);
    if (error > 0) {
        FUNC3(avctx, AV_LOG_ERROR, "Invalid input data or requested bitrate too low, cannot encode\n");
        avpkt->size = 0;
        return FUNC0(EINVAL);
    }
    FUNC2((FUNC9(&s->pb) & 7) == 0);
    i= avctx->block_align - (FUNC9(&s->pb)+7)/8;
    FUNC2(i>=0);
    while(i--)
        FUNC8(&s->pb, 8, 'N');

    FUNC7(&s->pb);
    FUNC2(FUNC10(&s->pb) - s->pb.buf == avctx->block_align);

    if (frame->pts != AV_NOPTS_VALUE)
        avpkt->pts = frame->pts - FUNC6(avctx, avctx->initial_padding);

    avpkt->size     = avctx->block_align;
    *got_packet_ptr = 1;
    return 0;
}