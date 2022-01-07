
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_23__ {TYPE_1__* internal; TYPE_5__** outputs; } ;
struct TYPE_22__ {int sample_aspect_ratio; int time_base; int h; int w; } ;
struct TYPE_21__ {int sample_aspect_ratio; int pts; } ;
struct TYPE_20__ {TYPE_2__* opaque; TYPE_6__* parent; } ;
struct TYPE_17__ {int time_base; int pts; } ;
struct TYPE_19__ {int nb_inputs; TYPE_12__ fs; TYPE_4__** frames; } ;
struct TYPE_18__ {int (* execute ) (TYPE_6__*,int ,TYPE_4__*,int *,int ) ;} ;
typedef TYPE_2__ StackContext ;
typedef TYPE_3__ FFFrameSync ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int,int ) ;
 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 int ff_framesync_get_frame (TYPE_12__*,int,TYPE_4__**,int ) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int process_slice ;
 int stub1 (TYPE_6__*,int ,TYPE_4__*,int *,int ) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFilterLink *outlink = ctx->outputs[0];
    StackContext *s = fs->opaque;
    AVFrame **in = s->frames;
    AVFrame *out;
    int i, ret;

    for (i = 0; i < s->nb_inputs; i++) {
        if ((ret = ff_framesync_get_frame(&s->fs, i, &in[i], 0)) < 0)
            return ret;
    }

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out)
        return AVERROR(ENOMEM);
    out->pts = av_rescale_q(s->fs.pts, s->fs.time_base, outlink->time_base);
    out->sample_aspect_ratio = outlink->sample_aspect_ratio;

    ctx->internal->execute(ctx, process_slice, out, ((void*)0), FFMIN(s->nb_inputs, ff_filter_get_nb_threads(ctx)));

    return ff_filter_frame(outlink, out);
}
