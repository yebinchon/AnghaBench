#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int int64_t ;
struct TYPE_17__ {TYPE_2__* priv_data; } ;
struct TYPE_16__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {int pts; int end_display_time; scalar_t__ num_rects; } ;
struct TYPE_13__ {scalar_t__* str; } ;
struct TYPE_14__ {int* pktbuf; int start_time; int end_time; scalar_t__ last_real_time; int /*<<< orphan*/  readorder; TYPE_1__ buffer; scalar_t__ buffer_changed; scalar_t__ screen_touched; scalar_t__ real_time; int /*<<< orphan*/  pktbuf_size; } ;
typedef  TYPE_2__ CCaptionSubContext ;
typedef  TYPE_3__ AVSubtitle ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ms_tb ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int const,int,int) ; 
 scalar_t__ FUNC9 (int*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *data, int *got_sub, AVPacket *avpkt)
{
    CCaptionSubContext *ctx = avctx->priv_data;
    AVSubtitle *sub = data;
    const int64_t start_time = sub->pts;
    uint8_t *bptr = NULL;
    int len = avpkt->size;
    int ret = 0;
    int i;

    FUNC1(&ctx->pktbuf, &ctx->pktbuf_size, len);
    if (!ctx->pktbuf) {
        FUNC2(ctx, AV_LOG_WARNING, "Insufficient Memory of %d truncated to %d\n", len, ctx->pktbuf_size);
        return FUNC0(ENOMEM);
    }
    FUNC7(ctx->pktbuf, avpkt->data, len);
    bptr = ctx->pktbuf;

    for (i  = 0; i < len; i += 3) {
        uint8_t cc_type = *(bptr + i) & 3;
        if (FUNC9(bptr + i))
            continue;
        /* ignoring data field 1 */
        if(cc_type == 1)
            continue;
        else
            FUNC8(ctx, start_time, *(bptr + i + 1) & 0x7f, *(bptr + i + 2) & 0x7f);

        if (!ctx->buffer_changed)
            continue;
        ctx->buffer_changed = 0;

        if (*ctx->buffer.str || ctx->real_time)
        {
            FUNC6(ctx, "cdp writing data (%s)\n",ctx->buffer.str);
            ret = FUNC5(sub, ctx->buffer.str, ctx->readorder++, 0, NULL, NULL);
            if (ret < 0)
                return ret;
            sub->pts = ctx->start_time;
            if (!ctx->real_time)
                sub->end_display_time = FUNC3(ctx->end_time - ctx->start_time,
                                                     AV_TIME_BASE_Q, ms_tb);
            else
                sub->end_display_time = -1;
            ctx->buffer_changed = 0;
            ctx->last_real_time = sub->pts;
            ctx->screen_touched = 0;
        }
    }

    if (ctx->real_time && ctx->screen_touched &&
        sub->pts > ctx->last_real_time + FUNC3(200, ms_tb, AV_TIME_BASE_Q)) {
        ctx->last_real_time = sub->pts;
        ctx->screen_touched = 0;

        FUNC4(ctx);
        ctx->buffer_changed = 0;

        ret = FUNC5(sub, ctx->buffer.str, ctx->readorder++, 0, NULL, NULL);
        if (ret < 0)
            return ret;
        sub->end_display_time = -1;
    }

    *got_sub = sub->num_rects > 0;
    return ret;
}