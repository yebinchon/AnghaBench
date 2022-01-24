#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  framerate; int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_10__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pix_fmt; int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  codecpar; int /*<<< orphan*/  time_base; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_PIX_FMT_VAAPI ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* decoder_ctx ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_2__* encoder_ctx ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int initialized ; 
 int /*<<< orphan*/  ofmt_ctx ; 
 TYPE_1__* ost ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC14(AVPacket *pkt, AVCodec *enc_codec)
{
    AVFrame *frame;
    int ret = 0;

    ret = FUNC9(decoder_ctx, pkt);
    if (ret < 0) {
        FUNC13(stderr, "Error during decoding. Error code: %s\n", FUNC2(ret));
        return ret;
    }

    while (ret >= 0) {
        if (!(frame = FUNC3()))
            return FUNC0(ENOMEM);

        ret = FUNC8(decoder_ctx, frame);
        if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF) {
            FUNC4(&frame);
            return 0;
        } else if (ret < 0) {
            FUNC13(stderr, "Error while decoding. Error code: %s\n", FUNC2(ret));
            goto fail;
        }

        if (!initialized) {
            /* we need to ref hw_frames_ctx of decoder to initialize encoder's codec.
               Only after we get a decoded frame, can we obtain its hw_frames_ctx */
            encoder_ctx->hw_frames_ctx = FUNC1(decoder_ctx->hw_frames_ctx);
            if (!encoder_ctx->hw_frames_ctx) {
                ret = FUNC0(ENOMEM);
                goto fail;
            }
            /* set AVCodecContext Parameters for encoder, here we keep them stay
             * the same as decoder.
             * xxx: now the sample can't handle resolution change case.
             */
            encoder_ctx->time_base = FUNC5(decoder_ctx->framerate);
            encoder_ctx->pix_fmt   = AV_PIX_FMT_VAAPI;
            encoder_ctx->width     = decoder_ctx->width;
            encoder_ctx->height    = decoder_ctx->height;

            if ((ret = FUNC6(encoder_ctx, enc_codec, NULL)) < 0) {
                FUNC13(stderr, "Failed to open encode codec. Error code: %s\n",
                        FUNC2(ret));
                goto fail;
            }

            if (!(ost = FUNC10(ofmt_ctx, enc_codec))) {
                FUNC13(stderr, "Failed to allocate stream for output format.\n");
                ret = FUNC0(ENOMEM);
                goto fail;
            }

            ost->time_base = encoder_ctx->time_base;
            ret = FUNC7(ost->codecpar, encoder_ctx);
            if (ret < 0) {
                FUNC13(stderr, "Failed to copy the stream parameters. "
                        "Error code: %s\n", FUNC2(ret));
                goto fail;
            }

            /* write the stream header */
            if ((ret = FUNC11(ofmt_ctx, NULL)) < 0) {
                FUNC13(stderr, "Error while writing stream header. "
                        "Error code: %s\n", FUNC2(ret));
                goto fail;
            }

            initialized = 1;
        }

        if ((ret = FUNC12(frame)) < 0)
            FUNC13(stderr, "Error during encoding and writing.\n");

fail:
        FUNC4(&frame);
        if (ret < 0)
            return ret;
    }
    return 0;
}