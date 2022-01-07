
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int direct; int * out; int * in; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_13__ {scalar_t__ is_disabled; TYPE_1__* internal; TYPE_3__** outputs; } ;
struct TYPE_12__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_10__ {int (* execute ) (TYPE_4__*,int ,TYPE_2__*,int *,int) ;} ;
typedef int AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 scalar_t__ av_frame_is_writable (int *) ;
 int do_denoise ;
 int ff_filter_frame (TYPE_3__*,int *) ;
 int * ff_get_video_buffer (TYPE_3__*,int ,int ) ;
 int stub1 (TYPE_4__*,int ,TYPE_2__*,int *,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];

    AVFrame *out;
    int direct = av_frame_is_writable(in) && !ctx->is_disabled;
    ThreadData td;

    if (direct) {
        out = in;
    } else {
        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }

        av_frame_copy_props(out, in);
    }

    td.in = in;
    td.out = out;
    td.direct = direct;

    ctx->internal->execute(ctx, do_denoise, &td, ((void*)0), 3);

    if (ctx->is_disabled) {
        av_frame_free(&out);
        return ff_filter_frame(outlink, in);
    }

    if (!direct)
        av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
