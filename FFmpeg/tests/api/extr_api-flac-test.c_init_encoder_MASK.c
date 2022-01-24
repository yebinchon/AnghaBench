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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  sample_fmt; } ;
typedef  TYPE_1__ AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_SAMPLE_FMT_S16 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int NAME_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVCodec *enc, AVCodecContext **enc_ctx,
                        int64_t ch_layout, int sample_rate)
{
    AVCodecContext *ctx;
    int result;
    char name_buff[NAME_BUFF_SIZE];

    FUNC1(name_buff, NAME_BUFF_SIZE, 0, ch_layout);
    FUNC2(NULL, AV_LOG_INFO, "channel layout: %s, sample rate: %i\n", name_buff, sample_rate);

    ctx = FUNC3(enc);
    if (!ctx) {
        FUNC2(NULL, AV_LOG_ERROR, "Can't allocate encoder context\n");
        return FUNC0(ENOMEM);
    }

    ctx->sample_fmt = AV_SAMPLE_FMT_S16;
    ctx->sample_rate = sample_rate;
    ctx->channel_layout = ch_layout;

    result = FUNC4(ctx, enc, NULL);
    if (result < 0) {
        FUNC2(ctx, AV_LOG_ERROR, "Can't open encoder\n");
        return result;
    }

    *enc_ctx = ctx;
    return 0;
}