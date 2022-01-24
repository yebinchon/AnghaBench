#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int channels; int /*<<< orphan*/  sample_fmt; } ;
struct TYPE_8__ {int nb_samples; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC7(AVCodecContext *dec_ctx, AVPacket *pkt, AVFrame *frame,
                   FILE *outfile)
{
    int i, ch;
    int ret, data_size;

    /* send the packet with the compressed data to the decoder */
    ret = FUNC3(dec_ctx, pkt);
    if (ret < 0) {
        FUNC5(stderr, "Error submitting the packet to the decoder\n");
        FUNC4(1);
    }

    /* read all the output frames (in general there may be any number of them */
    while (ret >= 0) {
        ret = FUNC2(dec_ctx, frame);
        if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
            return;
        else if (ret < 0) {
            FUNC5(stderr, "Error during decoding\n");
            FUNC4(1);
        }
        data_size = FUNC1(dec_ctx->sample_fmt);
        if (data_size < 0) {
            /* This should not occur, checking just for paranoia */
            FUNC5(stderr, "Failed to calculate data size\n");
            FUNC4(1);
        }
        for (i = 0; i < frame->nb_samples; i++)
            for (ch = 0; ch < dec_ctx->channels; ch++)
                FUNC6(frame->data[ch] + data_size*i, 1, data_size, outfile);
    }
}