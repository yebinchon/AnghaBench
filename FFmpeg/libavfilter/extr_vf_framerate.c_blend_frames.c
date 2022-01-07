
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int src2_factor; scalar_t__ src1_factor; int copy_src2; int copy_src1; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_17__ {TYPE_1__* internal; TYPE_4__** outputs; TYPE_3__* priv; } ;
struct TYPE_16__ {int h; int w; } ;
struct TYPE_15__ {int flags; double score; double scene_score; int f0; int work; scalar_t__ blend_factor_max; int f1; } ;
struct TYPE_13__ {int (* execute ) (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ FrameRateContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMAX (int,int) ;
 int FFMIN (int ,int ) ;
 int FRAMERATE_FLAG_SCD ;
 int av_frame_copy_props (int ,int ) ;
 int ff_dlog (TYPE_5__*,char*,...) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 int ff_get_video_buffer (TYPE_4__*,int ,int) ;
 int filter_slice ;
 double get_scene_score (TYPE_5__*,int ,int ) ;
 int stub1 (TYPE_5__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int blend_frames(AVFilterContext *ctx, int interpolate)
{
    FrameRateContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    double interpolate_scene_score = 0;

    if ((s->flags & FRAMERATE_FLAG_SCD)) {
        if (s->score >= 0.0)
            interpolate_scene_score = s->score;
        else
            interpolate_scene_score = s->score = get_scene_score(ctx, s->f0, s->f1);
        ff_dlog(ctx, "blend_frames() interpolate scene score:%f\n", interpolate_scene_score);
    }

    if (interpolate_scene_score < s->scene_score) {
        ThreadData td;
        td.copy_src1 = s->f0;
        td.copy_src2 = s->f1;
        td.src2_factor = interpolate;
        td.src1_factor = s->blend_factor_max - td.src2_factor;


        s->work = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!s->work)
            return AVERROR(ENOMEM);

        av_frame_copy_props(s->work, s->f0);

        ff_dlog(ctx, "blend_frames() INTERPOLATE to create work frame\n");
        ctx->internal->execute(ctx, filter_slice, &td, ((void*)0), FFMIN(FFMAX(1, outlink->h >> 2), ff_filter_get_nb_threads(ctx)));
        return 1;
    }
    return 0;
}
