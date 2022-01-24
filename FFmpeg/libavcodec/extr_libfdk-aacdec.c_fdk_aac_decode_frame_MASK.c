#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_14__ {int frame_size; int channels; int /*<<< orphan*/  sample_fmt; TYPE_1__* priv_data; } ;
struct TYPE_13__ {int nb_samples; int /*<<< orphan*/ * extended_data; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int decoder_buffer_size; scalar_t__ decoder_buffer; int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  INT_PCM ;
typedef  TYPE_1__ FDKAACDecContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;
typedef  scalar_t__ AAC_DECODER_ERROR ;

/* Variables and functions */
 scalar_t__ AAC_DEC_NOT_ENOUGH_BITS ; 
 scalar_t__ AAC_DEC_OK ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC4 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, void *data,
                                int *got_frame_ptr, AVPacket *avpkt)
{
    FDKAACDecContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int ret;
    AAC_DECODER_ERROR err;
    UINT valid = avpkt->size;

    err = FUNC1(s->handle, &avpkt->data, &avpkt->size, &valid);
    if (err != AAC_DEC_OK) {
        FUNC3(avctx, AV_LOG_ERROR, "aacDecoder_Fill() failed: %x\n", err);
        return AVERROR_INVALIDDATA;
    }

    err = FUNC0(s->handle, (INT_PCM *) s->decoder_buffer, s->decoder_buffer_size / sizeof(INT_PCM), 0);
    if (err == AAC_DEC_NOT_ENOUGH_BITS) {
        ret = avpkt->size - valid;
        goto end;
    }
    if (err != AAC_DEC_OK) {
        FUNC3(avctx, AV_LOG_ERROR,
               "aacDecoder_DecodeFrame() failed: %x\n", err);
        ret = AVERROR_UNKNOWN;
        goto end;
    }

    if ((ret = FUNC5(avctx)) < 0)
        goto end;
    frame->nb_samples = avctx->frame_size;

    if ((ret = FUNC4(avctx, frame, 0)) < 0)
        goto end;

    FUNC6(frame->extended_data[0], s->decoder_buffer,
           avctx->channels * avctx->frame_size *
           FUNC2(avctx->sample_fmt));

    *got_frame_ptr = 1;
    ret = avpkt->size - valid;

end:
    return ret;
}