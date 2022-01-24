#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int skip_frame; int /*<<< orphan*/  codec; int /*<<< orphan*/  codec_id; } ;
struct TYPE_10__ {scalar_t__ size; int data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int AVDISCARD_ALL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int*,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *codec_ctx, AVPacket *pkt, int decode)
{
    int ret = 0;
    int got_frame = 0;
    AVFrame *frame = NULL;
    int skip_frame = codec_ctx->skip_frame;

    if (!FUNC6(codec_ctx)) {
        const AVCodec *codec = FUNC5(codec_ctx->codec_id);

        ret = FUNC7(codec_ctx, codec, NULL);
        if (ret < 0) {
            FUNC3(codec_ctx, AV_LOG_ERROR, "Failed to open codec\n");
            goto end;
        }
    }

    frame = FUNC1();
    if (!frame) {
        FUNC3(NULL, AV_LOG_ERROR, "Failed to allocate frame\n");
        goto end;
    }

    if (!decode && FUNC8(codec_ctx->codec)) {
        codec_ctx->skip_frame = AVDISCARD_ALL;
    }

    do {
        ret = FUNC4(codec_ctx, frame, &got_frame, pkt);
        FUNC0(decode || (!decode && !got_frame));
        if (ret < 0)
            break;
        pkt->data += ret;
        pkt->size -= ret;

        if (got_frame) {
            break;
        }
    } while (pkt->size > 0);

end:
    codec_ctx->skip_frame = skip_frame;

    FUNC2(&frame);
    return ret;
}