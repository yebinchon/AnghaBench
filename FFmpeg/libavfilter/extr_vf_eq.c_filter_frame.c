
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_26__ {int (* adjust ) (TYPE_6__*,int ,int ,int ,int ,int,int) ;} ;
struct TYPE_25__ {TYPE_1__* priv; TYPE_4__** outputs; } ;
struct TYPE_24__ {int w; int h; int frame_count_out; int time_base; int format; TYPE_5__* dst; } ;
struct TYPE_23__ {int pkt_pos; int * linesize; int * data; int pts; } ;
struct TYPE_22__ {int nb_components; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_21__ {int* var_values; scalar_t__ eval_mode; TYPE_6__* param; } ;
typedef TYPE_1__ EQContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int ENOMEM ;
 scalar_t__ EVAL_MODE_FRAME ;
 int NAN ;
 int TS2T (int ,int ) ;
 size_t VAR_N ;
 size_t VAR_POS ;
 size_t VAR_T ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int av_image_copy_plane (int ,int ,int ,int ,int,int) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int,int) ;
 int set_brightness (TYPE_1__*) ;
 int set_contrast (TYPE_1__*) ;
 int set_gamma (TYPE_1__*) ;
 int set_saturation (TYPE_1__*) ;
 int stub1 (TYPE_6__*,int ,int ,int ,int ,int,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    EQContext *eq = ctx->priv;
    AVFrame *out;
    int64_t pos = in->pkt_pos;
    const AVPixFmtDescriptor *desc;
    int i;

    out = ff_get_video_buffer(outlink, inlink->w, inlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }

    av_frame_copy_props(out, in);
    desc = av_pix_fmt_desc_get(inlink->format);

    eq->var_values[VAR_N] = inlink->frame_count_out;
    eq->var_values[VAR_POS] = pos == -1 ? NAN : pos;
    eq->var_values[VAR_T] = TS2T(in->pts, inlink->time_base);

    if (eq->eval_mode == EVAL_MODE_FRAME) {
        set_gamma(eq);
        set_contrast(eq);
        set_brightness(eq);
        set_saturation(eq);
    }

    for (i = 0; i < desc->nb_components; i++) {
        int w = inlink->w;
        int h = inlink->h;

        if (i == 1 || i == 2) {
            w = AV_CEIL_RSHIFT(w, desc->log2_chroma_w);
            h = AV_CEIL_RSHIFT(h, desc->log2_chroma_h);
        }

        if (eq->param[i].adjust)
            eq->param[i].adjust(&eq->param[i], out->data[i], out->linesize[i],
                                 in->data[i], in->linesize[i], w, h);
        else
            av_image_copy_plane(out->data[i], out->linesize[i],
                                in->data[i], in->linesize[i], w, h);
    }

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
