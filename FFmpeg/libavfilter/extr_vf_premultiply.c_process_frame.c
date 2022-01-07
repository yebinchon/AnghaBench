
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


struct TYPE_20__ {TYPE_4__** outputs; } ;
struct TYPE_19__ {int time_base; } ;
struct TYPE_18__ {int pts; } ;
struct TYPE_17__ {TYPE_1__* opaque; TYPE_5__* parent; } ;
struct TYPE_15__ {int time_base; } ;
struct TYPE_16__ {TYPE_11__ fs; } ;
typedef TYPE_1__ PreMultiplyContext ;
typedef TYPE_2__ FFFrameSync ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int av_rescale_q (int ,int ,int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_framesync_get_frame (TYPE_11__*,int,TYPE_3__**,int ) ;
 int filter_frame (TYPE_5__*,TYPE_3__**,TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static int process_frame(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    PreMultiplyContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = ((void*)0), *base, *alpha;
    int ret;

    if ((ret = ff_framesync_get_frame(&s->fs, 0, &base, 0)) < 0 ||
        (ret = ff_framesync_get_frame(&s->fs, 1, &alpha, 0)) < 0)
        return ret;

    if ((ret = filter_frame(ctx, &out, base, alpha)) < 0)
        return ret;

    out->pts = av_rescale_q(base->pts, s->fs.time_base, outlink->time_base);

    return ff_filter_frame(outlink, out);
}
