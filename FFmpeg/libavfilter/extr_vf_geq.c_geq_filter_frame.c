
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_20__ {int width; int height; int plane; int linesize; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_24__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_23__ {int frame_count_out; int w; int h; int time_base; TYPE_6__* dst; } ;
struct TYPE_22__ {int pts; int* linesize; scalar_t__* data; } ;
struct TYPE_21__ {int* values; int planes; TYPE_4__* picref; int * dst16; scalar_t__ dst; int vsub; int hsub; } ;
struct TYPE_19__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ GEQContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int AV_NOPTS_VALUE ;
 int ENOMEM ;
 int FFMIN (int const,int const) ;
 int NAN ;
 size_t VAR_H ;
 size_t VAR_N ;
 size_t VAR_SH ;
 size_t VAR_SW ;
 size_t VAR_T ;
 size_t VAR_W ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int av_q2d (int ) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int,int) ;
 int slice_geq_filter ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int geq_filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    int plane;
    AVFilterContext *ctx = inlink->dst;
    const int nb_threads = ff_filter_get_nb_threads(ctx);
    GEQContext *geq = ctx->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;

    geq->values[VAR_N] = inlink->frame_count_out,
    geq->values[VAR_T] = in->pts == AV_NOPTS_VALUE ? NAN : in->pts * av_q2d(inlink->time_base),

    geq->picref = in;
    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    for (plane = 0; plane < geq->planes && out->data[plane]; plane++) {
        const int width = (plane == 1 || plane == 2) ? AV_CEIL_RSHIFT(inlink->w, geq->hsub) : inlink->w;
        const int height = (plane == 1 || plane == 2) ? AV_CEIL_RSHIFT(inlink->h, geq->vsub) : inlink->h;
        const int linesize = out->linesize[plane];
        ThreadData td;

        geq->dst = out->data[plane];
        geq->dst16 = (uint16_t*)out->data[plane];

        geq->values[VAR_W] = width;
        geq->values[VAR_H] = height;
        geq->values[VAR_SW] = width / (double)inlink->w;
        geq->values[VAR_SH] = height / (double)inlink->h;

        td.width = width;
        td.height = height;
        td.plane = plane;
        td.linesize = linesize;

        ctx->internal->execute(ctx, slice_geq_filter, &td, ((void*)0), FFMIN(height, nb_threads));
    }

    av_frame_free(&geq->picref);
    return ff_filter_frame(outlink, out);
}
