#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_6__ {void* channel_layout; void* request_channel_layout; int /*<<< orphan*/  request_sample_fmt; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVCodec *dec, AVCodecContext **dec_ctx,
                        int64_t ch_layout)
{
    AVCodecContext *ctx;
    int result;

    ctx = FUNC2(dec);
    if (!ctx) {
        FUNC1(NULL, AV_LOG_ERROR , "Can't allocate decoder context\n");
        return FUNC0(ENOMEM);
    }

    ctx->request_sample_fmt = AV_SAMPLE_FMT_S16;
    /* XXX: FLAC ignores it for some reason */
    ctx->request_channel_layout = ch_layout;
    ctx->channel_layout = ch_layout;

    result = FUNC3(ctx, dec, NULL);
    if (result < 0) {
        FUNC1(ctx, AV_LOG_ERROR, "Can't open decoder\n");
        return result;
    }

    *dec_ctx = ctx;
    return 0;
}