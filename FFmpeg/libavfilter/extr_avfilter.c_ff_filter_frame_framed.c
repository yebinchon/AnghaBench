
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int is_disabled; TYPE_1__* filter; } ;
struct TYPE_13__ {int (* filter_frame ) (TYPE_2__*,int *) ;scalar_t__ needs_writable; } ;
struct TYPE_12__ {int frame_count_out; TYPE_3__* dstpad; TYPE_5__* dst; } ;
struct TYPE_11__ {int flags; } ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterPad ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC ;
 int av_frame_free (int **) ;
 int default_filter_frame (TYPE_2__*,int *) ;
 int ff_inlink_evaluate_timeline_at_frame (TYPE_2__*,int *) ;
 int ff_inlink_make_frame_writable (TYPE_2__*,int **) ;
 int ff_inlink_process_commands (TYPE_2__*,int *) ;

__attribute__((used)) static int ff_filter_frame_framed(AVFilterLink *link, AVFrame *frame)
{
    int (*filter_frame)(AVFilterLink *, AVFrame *);
    AVFilterContext *dstctx = link->dst;
    AVFilterPad *dst = link->dstpad;
    int ret;

    if (!(filter_frame = dst->filter_frame))
        filter_frame = default_filter_frame;

    if (dst->needs_writable) {
        ret = ff_inlink_make_frame_writable(link, &frame);
        if (ret < 0)
            goto fail;
    }

    ff_inlink_process_commands(link, frame);
    dstctx->is_disabled = !ff_inlink_evaluate_timeline_at_frame(link, frame);

    if (dstctx->is_disabled &&
        (dstctx->filter->flags & AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC))
        filter_frame = default_filter_frame;
    ret = filter_frame(link, frame);
    link->frame_count_out++;
    return ret;

fail:
    av_frame_free(&frame);
    return ret;
}
