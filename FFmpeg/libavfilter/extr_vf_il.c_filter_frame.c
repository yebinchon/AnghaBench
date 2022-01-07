
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int h; int w; TYPE_1__* dst; } ;
struct TYPE_16__ {int * linesize; int * data; } ;
struct TYPE_15__ {int nb_planes; int has_alpha; int alpha_swap; int alpha_mode; int * linesize; int chroma_swap; int chroma_mode; int chroma_height; int luma_swap; int luma_mode; } ;
struct TYPE_14__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ IlContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int ,int ) ;
 int interleave (int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *inpicref)
{
    IlContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    AVFrame *out;
    int comp;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&inpicref);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, inpicref);

    interleave(out->data[0], inpicref->data[0],
               s->linesize[0], inlink->h,
               out->linesize[0], inpicref->linesize[0],
               s->luma_mode, s->luma_swap);

    for (comp = 1; comp < (s->nb_planes - s->has_alpha); comp++) {
        interleave(out->data[comp], inpicref->data[comp],
                   s->linesize[comp], s->chroma_height,
                   out->linesize[comp], inpicref->linesize[comp],
                   s->chroma_mode, s->chroma_swap);
    }

    if (s->has_alpha) {
        comp = s->nb_planes - 1;
        interleave(out->data[comp], inpicref->data[comp],
                   s->linesize[comp], inlink->h,
                   out->linesize[comp], inpicref->linesize[comp],
                   s->alpha_mode, s->alpha_swap);
    }

    av_frame_free(&inpicref);
    return ff_filter_frame(outlink, out);
}
