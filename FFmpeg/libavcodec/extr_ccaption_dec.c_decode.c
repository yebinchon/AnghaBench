
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_17__ {TYPE_2__* priv_data; } ;
struct TYPE_16__ {int size; int data; } ;
struct TYPE_15__ {int pts; int end_display_time; scalar_t__ num_rects; } ;
struct TYPE_13__ {scalar_t__* str; } ;
struct TYPE_14__ {int* pktbuf; int start_time; int end_time; scalar_t__ last_real_time; int readorder; TYPE_1__ buffer; scalar_t__ buffer_changed; scalar_t__ screen_touched; scalar_t__ real_time; int pktbuf_size; } ;
typedef TYPE_2__ CCaptionSubContext ;
typedef TYPE_3__ AVSubtitle ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 int AV_TIME_BASE_Q ;
 int ENOMEM ;
 int av_fast_padded_malloc (int**,int *,int) ;
 int av_log (TYPE_2__*,int ,char*,int,int ) ;
 scalar_t__ av_rescale_q (int,int ,int ) ;
 int capture_screen (TYPE_2__*) ;
 int ff_ass_add_rect (TYPE_3__*,scalar_t__*,int ,int ,int *,int *) ;
 int ff_dlog (TYPE_2__*,char*,scalar_t__*) ;
 int memcpy (int*,int ,int) ;
 int ms_tb ;
 int process_cc608 (TYPE_2__*,int const,int,int) ;
 scalar_t__ validate_cc_data_pair (int*) ;

__attribute__((used)) static int decode(AVCodecContext *avctx, void *data, int *got_sub, AVPacket *avpkt)
{
    CCaptionSubContext *ctx = avctx->priv_data;
    AVSubtitle *sub = data;
    const int64_t start_time = sub->pts;
    uint8_t *bptr = ((void*)0);
    int len = avpkt->size;
    int ret = 0;
    int i;

    av_fast_padded_malloc(&ctx->pktbuf, &ctx->pktbuf_size, len);
    if (!ctx->pktbuf) {
        av_log(ctx, AV_LOG_WARNING, "Insufficient Memory of %d truncated to %d\n", len, ctx->pktbuf_size);
        return AVERROR(ENOMEM);
    }
    memcpy(ctx->pktbuf, avpkt->data, len);
    bptr = ctx->pktbuf;

    for (i = 0; i < len; i += 3) {
        uint8_t cc_type = *(bptr + i) & 3;
        if (validate_cc_data_pair(bptr + i))
            continue;

        if(cc_type == 1)
            continue;
        else
            process_cc608(ctx, start_time, *(bptr + i + 1) & 0x7f, *(bptr + i + 2) & 0x7f);

        if (!ctx->buffer_changed)
            continue;
        ctx->buffer_changed = 0;

        if (*ctx->buffer.str || ctx->real_time)
        {
            ff_dlog(ctx, "cdp writing data (%s)\n",ctx->buffer.str);
            ret = ff_ass_add_rect(sub, ctx->buffer.str, ctx->readorder++, 0, ((void*)0), ((void*)0));
            if (ret < 0)
                return ret;
            sub->pts = ctx->start_time;
            if (!ctx->real_time)
                sub->end_display_time = av_rescale_q(ctx->end_time - ctx->start_time,
                                                     AV_TIME_BASE_Q, ms_tb);
            else
                sub->end_display_time = -1;
            ctx->buffer_changed = 0;
            ctx->last_real_time = sub->pts;
            ctx->screen_touched = 0;
        }
    }

    if (ctx->real_time && ctx->screen_touched &&
        sub->pts > ctx->last_real_time + av_rescale_q(200, ms_tb, AV_TIME_BASE_Q)) {
        ctx->last_real_time = sub->pts;
        ctx->screen_touched = 0;

        capture_screen(ctx);
        ctx->buffer_changed = 0;

        ret = ff_ass_add_rect(sub, ctx->buffer.str, ctx->readorder++, 0, ((void*)0), ((void*)0));
        if (ret < 0)
            return ret;
        sub->end_display_time = -1;
    }

    *got_sub = sub->num_rects > 0;
    return ret;
}
