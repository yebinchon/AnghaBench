
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
struct TYPE_15__ {int time_base; } ;
struct TYPE_17__ {TYPE_11__ fs; } ;
struct TYPE_16__ {TYPE_2__* opaque; TYPE_5__* parent; } ;
typedef TYPE_1__ FFFrameSync ;
typedef TYPE_2__ BM3DContext ;
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
    BM3DContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = ((void*)0), *src, *ref;
    int ret;

    if ((ret = ff_framesync_get_frame(&s->fs, 0, &src, 0)) < 0 ||
        (ret = ff_framesync_get_frame(&s->fs, 1, &ref, 0)) < 0)
        return ret;

    if ((ret = filter_frame(ctx, &out, src, ref)) < 0)
        return ret;

    out->pts = av_rescale_q(src->pts, s->fs.time_base, outlink->time_base);

    return ff_filter_frame(outlink, out);
}
