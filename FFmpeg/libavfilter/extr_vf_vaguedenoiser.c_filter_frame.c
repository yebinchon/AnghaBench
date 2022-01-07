
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VagueDenoiserContext ;
struct TYPE_7__ {TYPE_1__** outputs; int * priv; } ;
struct TYPE_6__ {int h; int w; TYPE_2__* dst; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 int av_frame_is_writable (int *) ;
 int ff_filter_frame (TYPE_1__*,int *) ;
 int * ff_get_video_buffer (TYPE_1__*,int ,int ) ;
 int filter (int *,int *,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    VagueDenoiserContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    int direct = av_frame_is_writable(in);

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

    filter(s, in, out);

    if (!direct)
        av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
