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
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_21__ {int /*<<< orphan*/  frame_size; TYPE_1__* priv_data; } ;
struct TYPE_20__ {scalar_t__ data; } ;
struct TYPE_19__ {unsigned char* data; int size; int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; } ;
struct TYPE_18__ {int frame_size; } ;
struct TYPE_16__ {int /*<<< orphan*/  frame_count; } ;
struct TYPE_17__ {int buffer_index; unsigned char* buffer; TYPE_11__ afq; int /*<<< orphan*/  shine; } ;
typedef  TYPE_1__ SHINEContext ;
typedef  TYPE_2__ MPADecodeHeader ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_11__*,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int) ; 
 unsigned char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 unsigned char* FUNC9 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, AVPacket *avpkt,
                                 const AVFrame *frame, int *got_packet_ptr)
{
    SHINEContext *s = avctx->priv_data;
    MPADecodeHeader hdr;
    unsigned char *data;
    int written;
    int ret, len;

    if (frame)
        data = FUNC8(s->shine, (int16_t **)frame->data, &written);
    else
        data = FUNC9(s->shine, &written);
    if (written < 0)
        return -1;
    if (written > 0) {
        if (s->buffer_index + written > BUFFER_SIZE) {
            FUNC1(avctx, AV_LOG_ERROR, "internal buffer too small\n");
            return AVERROR_BUG;
        }
        FUNC6(s->buffer + s->buffer_index, data, written);
        s->buffer_index += written;
    }
    if (frame) {
        if ((ret = FUNC3(&s->afq, frame)) < 0)
            return ret;
    }

    if (s->buffer_index < 4 || !s->afq.frame_count)
        return 0;
    if (FUNC2(&hdr, FUNC0(s->buffer))) {
        FUNC1(avctx, AV_LOG_ERROR, "free format output not supported\n");
        return -1;
    }

    len = hdr.frame_size;
    if (len <= s->buffer_index) {
        if ((ret = FUNC5(avctx, avpkt, len, 0)))
            return ret;
        FUNC6(avpkt->data, s->buffer, len);
        s->buffer_index -= len;
        FUNC7(s->buffer, s->buffer + len, s->buffer_index);

        FUNC4(&s->afq, avctx->frame_size, &avpkt->pts,
                           &avpkt->duration);

        avpkt->size = len;
        *got_packet_ptr = 1;
    }
    return 0;
}