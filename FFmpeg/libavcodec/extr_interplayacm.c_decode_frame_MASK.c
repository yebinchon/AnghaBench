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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_13__ {int channels; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_11__ {scalar_t__ data; int /*<<< orphan*/  size; } ;
struct TYPE_10__ {int bitstream_size; int max_framesize; int bitstream_index; int block_len; int skip; int* block; int level; int /*<<< orphan*/ * bitstream; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ InterplayACMContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx, void *data,
                        int *got_frame_ptr, AVPacket *pkt)
{
    InterplayACMContext *s = avctx->priv_data;
    GetBitContext *gb = &s->gb;
    AVFrame *frame = data;
    const uint8_t *buf;
    int16_t *samples;
    int ret, n, buf_size, input_buf_size;

    if (!pkt->size && !s->bitstream_size) {
        *got_frame_ptr = 0;
        return 0;
    }

    buf_size = FUNC0(pkt->size, s->max_framesize - s->bitstream_size);
    input_buf_size = buf_size;
    if (s->bitstream_index + s->bitstream_size + buf_size > s->max_framesize) {
        FUNC6(s->bitstream, &s->bitstream[s->bitstream_index], s->bitstream_size);
        s->bitstream_index = 0;
    }
    if (pkt->data)
        FUNC5(&s->bitstream[s->bitstream_index + s->bitstream_size], pkt->data, buf_size);
    buf                = &s->bitstream[s->bitstream_index];
    buf_size          += s->bitstream_size;
    s->bitstream_size  = buf_size;
    if (buf_size < s->max_framesize && pkt->data) {
        *got_frame_ptr = 0;
        return input_buf_size;
    }

    if ((ret = FUNC4(gb, buf, buf_size)) < 0)
        return ret;

    frame->nb_samples = s->block_len / avctx->channels;
    if ((ret = FUNC2(avctx, frame, 0)) < 0)
        return ret;

    FUNC7(gb, s->skip);
    ret = FUNC1(s);
    if (ret < 0)
        return ret;

    samples = (int16_t *)frame->data[0];
    for (n = 0; n < frame->nb_samples * avctx->channels; n++) {
        int val = s->block[n] >> s->level;
        *samples++ = val;
    }

    *got_frame_ptr = 1;
    s->skip = FUNC3(gb) - 8 * (FUNC3(gb) / 8);
    n = FUNC3(gb) / 8;

    if (n > buf_size && pkt->data) {
        s->bitstream_size = 0;
        s->bitstream_index = 0;
        return AVERROR_INVALIDDATA;
    }

    if (s->bitstream_size) {
        s->bitstream_index += n;
        s->bitstream_size  -= n;
        return input_buf_size;
    }
    return n;
}