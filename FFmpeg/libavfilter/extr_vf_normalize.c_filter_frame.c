
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ is_disabled; int * priv; TYPE_1__** outputs; } ;
struct TYPE_6__ {int h; int w; TYPE_2__* dst; } ;
typedef int NormalizeContext ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 scalar_t__ av_frame_is_writable (int *) ;
 int ff_filter_frame (TYPE_1__*,int *) ;
 int * ff_get_video_buffer (TYPE_1__*,int ,int ) ;
 int normalize (int *,int *,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    NormalizeContext *s = ctx->priv;
    AVFrame *out;


    int direct = av_frame_is_writable(in) && !ctx->is_disabled;

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



    normalize(s, in, out);

    if (ctx->is_disabled) {
        av_frame_free(&out);
        return ff_filter_frame(outlink, in);
    }

    if (!direct)
        av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
