
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {int h; int w; TYPE_4__* dst; } ;
struct TYPE_17__ {int* linesize; int * data; } ;
struct TYPE_16__ {int nb_planes; int planes; int* planewidth; int depth; int * planeheight; int sigmaR; int sigmaS; } ;
typedef TYPE_1__ BilateralContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int av_image_copy_plane (int ,int,int ,int,int,int ) ;
 int bilateral_byte (TYPE_1__*,int ,int ,int ,int ,int,int ,int,int) ;
 int bilateral_word (TYPE_1__*,int ,int ,int ,int ,int,int ,int,int) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_video_buffer (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    BilateralContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    for (int plane = 0; plane < s->nb_planes; plane++) {
        if (!(s->planes & (1 << plane))) {
            av_image_copy_plane(out->data[plane], out->linesize[plane],
                                in->data[plane], in->linesize[plane],
                                s->planewidth[plane] * ((s->depth + 7) / 8), s->planeheight[plane]);
            continue;
        }

        if (s->depth <= 8)
           bilateral_byte(s, in->data[plane], out->data[plane], s->sigmaS, s->sigmaR,
                      s->planewidth[plane], s->planeheight[plane],
                      in->linesize[plane], out->linesize[plane]);
        else
           bilateral_word(s, in->data[plane], out->data[plane], s->sigmaS, s->sigmaR,
                      s->planewidth[plane], s->planeheight[plane],
                      in->linesize[plane] / 2, out->linesize[plane] / 2);
    }

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
