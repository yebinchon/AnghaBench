
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {TYPE_1__* internal; TYPE_2__* priv; TYPE_4__** outputs; } ;
struct TYPE_21__ {int h; int w; TYPE_5__* dst; } ;
struct TYPE_20__ {int * linesize; int * data; } ;
struct TYPE_19__ {TYPE_3__* in; int * height; int filter_slice; int * linesize; int is_rgbashift; } ;
struct TYPE_18__ {int (* execute ) (TYPE_5__*,int ,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_2__ ChromaShiftContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN3 (int ,int ,int ) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int av_image_copy_plane (int ,int ,int ,int ,int ,int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int stub1 (TYPE_5__*,int ,TYPE_3__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    ChromaShiftContext *s = ctx->priv;
    AVFrame *out;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    s->in = in;
    if (!s->is_rgbashift) {
        av_image_copy_plane(out->data[0],
                            out->linesize[0],
                            in->data[0], in->linesize[0],
                            s->linesize[0], s->height[0]);
    }
    ctx->internal->execute(ctx, s->filter_slice, out, ((void*)0),
                           FFMIN3(s->height[1],
                                  s->height[2],
                                  ff_filter_get_nb_threads(ctx)));
    s->in = ((void*)0);
    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
