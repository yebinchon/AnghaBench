#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int height; int* linesize; int /*<<< orphan*/  width; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  DecodeContext ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(DecodeContext *decode, AVCodecContext *decoder_ctx,
                         AVFrame *frame, AVFrame *sw_frame,
                         AVPacket *pkt, AVIOContext *output_ctx)
{
    int ret = 0;

    ret = FUNC5(decoder_ctx, pkt);
    if (ret < 0) {
        FUNC7(stderr, "Error during decoding\n");
        return ret;
    }

    while (ret >= 0) {
        int i, j;

        ret = FUNC4(decoder_ctx, frame);
        if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
            break;
        else if (ret < 0) {
            FUNC7(stderr, "Error during decoding\n");
            return ret;
        }

        /* A real program would do something useful with the decoded frame here.
         * We just retrieve the raw data and write it to a file, which is rather
         * useless but pedagogic. */
        ret = FUNC3(sw_frame, frame, 0);
        if (ret < 0) {
            FUNC7(stderr, "Error transferring the data to system memory\n");
            goto fail;
        }

        for (i = 0; i < FUNC1(sw_frame->data) && sw_frame->data[i]; i++)
            for (j = 0; j < (sw_frame->height >> (i > 0)); j++)
                FUNC6(output_ctx, sw_frame->data[i] + j * sw_frame->linesize[i], sw_frame->width);

fail:
        FUNC2(sw_frame);
        FUNC2(frame);

        if (ret < 0)
            return ret;
    }

    return 0;
}