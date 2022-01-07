
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct TYPE_22__ {TYPE_10__* out; TYPE_2__* cur; TYPE_2__* prev; TYPE_2__* next; scalar_t__ deint; int current_field; scalar_t__ frame_pending; } ;
typedef TYPE_1__ YADIFContext ;
struct TYPE_25__ {int * outputs; scalar_t__ is_disabled; TYPE_1__* priv; } ;
struct TYPE_24__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_23__ {scalar_t__ repeat_pict; int interlaced_frame; } ;
struct TYPE_21__ {int pts; scalar_t__ interlaced_frame; } ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 int YADIF_FIELD_END ;
 int av_assert0 (TYPE_2__*) ;
 void* av_frame_clone (TYPE_2__*) ;
 int av_frame_copy_props (TYPE_10__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int av_log (TYPE_4__*,int ,char*) ;
 scalar_t__ checkstride (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int ff_filter_frame (int ,TYPE_10__*) ;
 TYPE_10__* ff_get_video_buffer (int ,int ,int ) ;
 int fixstride (TYPE_3__*,TYPE_2__*) ;
 int return_frame (TYPE_4__*,int) ;

int ff_yadif_filter_frame(AVFilterLink *link, AVFrame *frame)
{
    AVFilterContext *ctx = link->dst;
    YADIFContext *yadif = ctx->priv;

    av_assert0(frame);

    if (yadif->frame_pending)
        return_frame(ctx, 1);

    if (yadif->prev)
        av_frame_free(&yadif->prev);
    yadif->prev = yadif->cur;
    yadif->cur = yadif->next;
    yadif->next = frame;

    if (!yadif->cur) {
        yadif->cur = av_frame_clone(yadif->next);
        if (!yadif->cur)
            return AVERROR(ENOMEM);
        yadif->current_field = YADIF_FIELD_END;
    }

    if (checkstride(yadif, yadif->next, yadif->cur)) {
        av_log(ctx, AV_LOG_VERBOSE, "Reallocating frame due to differing stride\n");
        fixstride(link, yadif->next);
    }
    if (checkstride(yadif, yadif->next, yadif->cur))
        fixstride(link, yadif->cur);
    if (yadif->prev && checkstride(yadif, yadif->next, yadif->prev))
        fixstride(link, yadif->prev);
    if (checkstride(yadif, yadif->next, yadif->cur) || (yadif->prev && checkstride(yadif, yadif->next, yadif->prev))) {
        av_log(ctx, AV_LOG_ERROR, "Failed to reallocate frame\n");
        return -1;
    }

    if (!yadif->prev)
        return 0;

    if ((yadif->deint && !yadif->cur->interlaced_frame) ||
        ctx->is_disabled ||
        (yadif->deint && !yadif->prev->interlaced_frame && yadif->prev->repeat_pict) ||
        (yadif->deint && !yadif->next->interlaced_frame && yadif->next->repeat_pict)
    ) {
        yadif->out = av_frame_clone(yadif->cur);
        if (!yadif->out)
            return AVERROR(ENOMEM);

        av_frame_free(&yadif->prev);
        if (yadif->out->pts != AV_NOPTS_VALUE)
            yadif->out->pts *= 2;
        return ff_filter_frame(ctx->outputs[0], yadif->out);
    }

    yadif->out = ff_get_video_buffer(ctx->outputs[0], link->w, link->h);
    if (!yadif->out)
        return AVERROR(ENOMEM);

    av_frame_copy_props(yadif->out, yadif->cur);
    yadif->out->interlaced_frame = 0;

    if (yadif->out->pts != AV_NOPTS_VALUE)
        yadif->out->pts *= 2;

    return return_frame(ctx, 0);
}
