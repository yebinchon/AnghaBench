
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int member_1; int member_0; } ;
struct TYPE_16__ {int member_1; int member_0; } ;
struct TYPE_19__ {TYPE_2__ member_1; TYPE_1__ member_0; } ;
typedef TYPE_4__ selective_color_func_type ;
struct TYPE_20__ {int * out; int * in; } ;
typedef TYPE_5__ ThreadData ;
struct TYPE_23__ {TYPE_3__* internal; TYPE_6__* priv; TYPE_7__** outputs; } ;
struct TYPE_22__ {int h; int w; TYPE_8__* dst; } ;
struct TYPE_21__ {size_t is_16bit; size_t correction_method; } ;
struct TYPE_18__ {int (* execute ) (TYPE_8__*,TYPE_4__ const,TYPE_5__*,int *,int ) ;} ;
typedef TYPE_6__ SelectiveColorContext ;
typedef int AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 scalar_t__ av_frame_is_writable (int *) ;
 int ff_filter_frame (TYPE_7__*,int *) ;
 int ff_filter_get_nb_threads (TYPE_8__*) ;
 int * ff_get_video_buffer (TYPE_7__*,int ,int ) ;
 int stub1 (TYPE_8__*,TYPE_4__ const,TYPE_5__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    int direct;
    AVFrame *out;
    ThreadData td;
    const SelectiveColorContext *s = ctx->priv;
    static const selective_color_func_type funcs[2][2][2] = {
        {
            {130, 128},
            {134, 132},
        },{
            {131, 129},
            {135, 133},
        }
    };

    if (av_frame_is_writable(in)) {
        direct = 1;
        out = in;
    } else {
        direct = 0;
        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }
        av_frame_copy_props(out, in);
    }

    td.in = in;
    td.out = out;
    ctx->internal->execute(ctx, funcs[s->is_16bit][direct][s->correction_method],
                           &td, ((void*)0), FFMIN(inlink->h, ff_filter_get_nb_threads(ctx)));

    if (!direct)
        av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
