
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;


struct TYPE_24__ {TYPE_5__* srcy; TYPE_5__* srcx; TYPE_5__* out; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_29__ {TYPE_1__* internal; scalar_t__ is_disabled; TYPE_6__** outputs; } ;
struct TYPE_28__ {int time_base; int h; int w; } ;
struct TYPE_27__ {int pts; } ;
struct TYPE_26__ {TYPE_3__* opaque; TYPE_7__* parent; } ;
struct TYPE_22__ {int time_base; int pts; } ;
struct TYPE_25__ {TYPE_13__ fs; int * heightx; int lut2; } ;
struct TYPE_23__ {int (* execute ) (TYPE_7__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ LUT2Context ;
typedef TYPE_4__ FFFrameSync ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterLink ;
typedef TYPE_7__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 TYPE_5__* av_frame_clone (TYPE_5__*) ;
 int av_frame_copy_props (TYPE_5__*,TYPE_5__*) ;
 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_6__*,TYPE_5__*) ;
 int ff_filter_get_nb_threads (TYPE_7__*) ;
 int ff_framesync_get_frame (TYPE_13__*,int,TYPE_5__**,int ) ;
 TYPE_5__* ff_get_video_buffer (TYPE_6__*,int ,int ) ;
 int stub1 (TYPE_7__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    LUT2Context *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out, *srcx = ((void*)0), *srcy = ((void*)0);
    int ret;

    if ((ret = ff_framesync_get_frame(&s->fs, 0, &srcx, 0)) < 0 ||
        (ret = ff_framesync_get_frame(&s->fs, 1, &srcy, 0)) < 0)
        return ret;

    if (ctx->is_disabled || !srcy) {
        out = av_frame_clone(srcx);
        if (!out)
            return AVERROR(ENOMEM);
    } else {
        ThreadData td;

        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out)
            return AVERROR(ENOMEM);
        av_frame_copy_props(out, srcx);

        td.out = out;
        td.srcx = srcx;
        td.srcy = srcy;
        ctx->internal->execute(ctx, s->lut2, &td, ((void*)0), FFMIN(s->heightx[1], ff_filter_get_nb_threads(ctx)));
    }

    out->pts = av_rescale_q(s->fs.pts, s->fs.time_base, outlink->time_base);

    return ff_filter_frame(outlink, out);
}
