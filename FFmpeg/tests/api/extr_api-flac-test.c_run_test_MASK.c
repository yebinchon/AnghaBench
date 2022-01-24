#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_19__ {int frame_size; scalar_t__ sample_fmt; scalar_t__ channel_layout; int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_rate; } ;
struct TYPE_18__ {int nb_samples; scalar_t__ format; scalar_t__ channel_layout; int* linesize; int channels; scalar_t__* data; } ;
struct TYPE_17__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int NUMBER_OF_AUDIO_FRAMES ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*,int*,TYPE_1__*) ; 
 int FUNC10 (TYPE_3__*,TYPE_1__*,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int FUNC14(AVCodec *enc, AVCodec *dec, AVCodecContext *enc_ctx,
                    AVCodecContext *dec_ctx)
{
    AVPacket enc_pkt;
    AVFrame *in_frame, *out_frame;
    uint8_t *raw_in = NULL, *raw_out = NULL;
    int in_offset = 0, out_offset = 0;
    int result = 0;
    int got_output = 0;
    int i = 0;
    int in_frame_bytes, out_frame_bytes;

    in_frame = FUNC1();
    if (!in_frame) {
        FUNC6(NULL, AV_LOG_ERROR, "Can't allocate input frame\n");
        return FUNC0(ENOMEM);
    }

    in_frame->nb_samples = enc_ctx->frame_size;
    in_frame->format = enc_ctx->sample_fmt;
    in_frame->channel_layout = enc_ctx->channel_layout;
    if (FUNC3(in_frame, 32) != 0) {
        FUNC6(NULL, AV_LOG_ERROR, "Can't allocate a buffer for input frame\n");
        return FUNC0(ENOMEM);
    }

    out_frame = FUNC1();
    if (!out_frame) {
        FUNC6(NULL, AV_LOG_ERROR, "Can't allocate output frame\n");
        return FUNC0(ENOMEM);
    }

    raw_in = FUNC7(in_frame->linesize[0] * NUMBER_OF_AUDIO_FRAMES);
    if (!raw_in) {
        FUNC6(NULL, AV_LOG_ERROR, "Can't allocate memory for raw_in\n");
        return FUNC0(ENOMEM);
    }

    raw_out = FUNC7(in_frame->linesize[0] * NUMBER_OF_AUDIO_FRAMES);
    if (!raw_out) {
        FUNC6(NULL, AV_LOG_ERROR, "Can't allocate memory for raw_out\n");
        return FUNC0(ENOMEM);
    }

    for (i = 0; i < NUMBER_OF_AUDIO_FRAMES; i++) {
        FUNC5(&enc_pkt);
        enc_pkt.data = NULL;
        enc_pkt.size = 0;

        FUNC11((uint16_t*)(in_frame->data[0]), i, enc_ctx->sample_rate,
                           enc_ctx->channels, enc_ctx->frame_size);
        in_frame_bytes = in_frame->nb_samples * in_frame->channels * sizeof(uint16_t);
        if (in_frame_bytes > in_frame->linesize[0]) {
            FUNC6(NULL, AV_LOG_ERROR, "Incorrect value of input frame linesize\n");
            return 1;
        }
        FUNC13(raw_in + in_offset, in_frame->data[0], in_frame_bytes);
        in_offset += in_frame_bytes;
        result = FUNC10(enc_ctx, &enc_pkt, in_frame, &got_output);
        if (result < 0) {
            FUNC6(NULL, AV_LOG_ERROR, "Error encoding audio frame\n");
            return result;
        }

        /* if we get an encoded packet, feed it straight to the decoder */
        if (got_output) {
            result = FUNC9(dec_ctx, out_frame, &got_output, &enc_pkt);
            if (result < 0) {
                FUNC6(NULL, AV_LOG_ERROR, "Error decoding audio packet\n");
                return result;
            }

            if (got_output) {
                if (result != enc_pkt.size) {
                    FUNC6(NULL, AV_LOG_INFO, "Decoder consumed only part of a packet, it is allowed to do so -- need to update this test\n");
                    return AVERROR_UNKNOWN;
                }

                if (in_frame->nb_samples != out_frame->nb_samples) {
                    FUNC6(NULL, AV_LOG_ERROR, "Error frames before and after decoding has different number of samples\n");
                    return AVERROR_UNKNOWN;
                }

                if (in_frame->channel_layout != out_frame->channel_layout) {
                    FUNC6(NULL, AV_LOG_ERROR, "Error frames before and after decoding has different channel layout\n");
                    return AVERROR_UNKNOWN;
                }

                if (in_frame->format != out_frame->format) {
                    FUNC6(NULL, AV_LOG_ERROR, "Error frames before and after decoding has different sample format\n");
                    return AVERROR_UNKNOWN;
                }
                out_frame_bytes = out_frame->nb_samples * out_frame->channels * sizeof(uint16_t);
                if (out_frame_bytes > out_frame->linesize[0]) {
                    FUNC6(NULL, AV_LOG_ERROR, "Incorrect value of output frame linesize\n");
                    return 1;
                }
                FUNC13(raw_out + out_offset, out_frame->data[0], out_frame_bytes);
                out_offset += out_frame_bytes;
            }
        }
        FUNC8(&enc_pkt);
    }

    if (FUNC12(raw_in, raw_out, out_frame_bytes * NUMBER_OF_AUDIO_FRAMES) != 0) {
        FUNC6(NULL, AV_LOG_ERROR, "Output differs\n");
        return 1;
    }

    FUNC6(NULL, AV_LOG_INFO, "OK\n");

    FUNC4(&raw_in);
    FUNC4(&raw_out);
    FUNC2(&in_frame);
    FUNC2(&out_frame);
    return 0;
}