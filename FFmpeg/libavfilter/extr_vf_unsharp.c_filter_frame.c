
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* apply_unsharp ) (TYPE_3__*,int *,int *) ;} ;
typedef TYPE_1__ UnsharpContext ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* dst; int h; int w; } ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (int *,int *) ;
 int av_frame_free (int **) ;
 int ff_filter_frame (TYPE_2__*,int *) ;
 int * ff_get_video_buffer (TYPE_2__*,int ,int ) ;
 int stub1 (TYPE_3__*,int *,int *) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *in)
{
    UnsharpContext *s = link->dst->priv;
    AVFilterLink *outlink = link->dst->outputs[0];
    AVFrame *out;
    int ret = 0;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    ret = s->apply_unsharp(link->dst, in, out);

    av_frame_free(&in);

    if (ret < 0) {
        av_frame_free(&out);
        return ret;
    }
    return ff_filter_frame(outlink, out);
}
