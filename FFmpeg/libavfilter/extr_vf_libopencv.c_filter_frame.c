
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int format; int h; int w; TYPE_3__* dst; } ;
struct TYPE_8__ {int (* end_frame_filter ) (TYPE_3__*,int *,int *) ;} ;
typedef TYPE_1__ OCVContext ;
typedef int IplImage ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 int ff_filter_frame (TYPE_2__*,int *) ;
 int * ff_get_video_buffer (TYPE_2__*,int ,int ) ;
 int fill_frame_from_iplimage (int *,int *,int ) ;
 int fill_iplimage_from_frame (int *,int *,int ) ;
 int stub1 (TYPE_3__*,int *,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    OCVContext *s = ctx->priv;
    AVFilterLink *outlink= inlink->dst->outputs[0];
    AVFrame *out;
    IplImage inimg, outimg;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    fill_iplimage_from_frame(&inimg , in , inlink->format);
    fill_iplimage_from_frame(&outimg, out, inlink->format);
    s->end_frame_filter(ctx, &inimg, &outimg);
    fill_frame_from_iplimage(out, &outimg, inlink->format);

    av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
