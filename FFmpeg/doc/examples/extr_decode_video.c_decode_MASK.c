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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {int frame_number; } ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int /*<<< orphan*/  EAGAIN ; 
 int FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC9(AVCodecContext *dec_ctx, AVFrame *frame, AVPacket *pkt,
                   const char *filename)
{
    char buf[1024];
    int ret;

    ret = FUNC2(dec_ctx, pkt);
    if (ret < 0) {
        FUNC5(stderr, "Error sending a packet for decoding\n");
        FUNC3(1);
    }

    while (ret >= 0) {
        ret = FUNC1(dec_ctx, frame);
        if (ret == FUNC0(EAGAIN) || ret == AVERROR_EOF)
            return;
        else if (ret < 0) {
            FUNC5(stderr, "Error during decoding\n");
            FUNC3(1);
        }

        FUNC7("saving frame %3d\n", dec_ctx->frame_number);
        FUNC4(stdout);

        /* the picture is allocated by the decoder. no need to
           free it */
        FUNC8(buf, sizeof(buf), "%s-%d", filename, dec_ctx->frame_number);
        FUNC6(frame->data[0], frame->linesize[0],
                 frame->width, frame->height, buf);
    }
}