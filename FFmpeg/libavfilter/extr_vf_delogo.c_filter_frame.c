
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_27__ {int w; int h; int time_base; int frame_count_out; int format; TYPE_1__* dst; } ;
struct TYPE_24__ {int num; int den; } ;
struct TYPE_26__ {int * linesize; int * data; TYPE_3__ sample_aspect_ratio; int pts; } ;
struct TYPE_25__ {int log2_chroma_w; int log2_chroma_h; int nb_components; } ;
struct TYPE_23__ {int x; int y; int w; int h; int band; int show; int * var_values; int h_pexpr; int w_pexpr; int y_pexpr; int x_pexpr; } ;
struct TYPE_22__ {TYPE_6__** outputs; TYPE_2__* priv; } ;
typedef TYPE_2__ DelogoContext ;
typedef TYPE_3__ AVRational ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterLink ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int) ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int FFMIN (int,int) ;
 int TS2T (int ,int ) ;
 size_t VAR_N ;
 size_t VAR_T ;
 int apply_delogo (int ,int ,int ,int ,int ,int ,TYPE_3__,int,int,int ,int ,int,int ,int) ;
 void* av_expr_eval (int ,int *,TYPE_2__*) ;
 int av_frame_copy_props (TYPE_5__*,TYPE_5__*) ;
 int av_frame_free (TYPE_5__**) ;
 scalar_t__ av_frame_is_writable (TYPE_5__*) ;
 int av_log (TYPE_2__*,int ,char*) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int config_input (TYPE_6__*) ;
 int ff_filter_frame (TYPE_6__*,TYPE_5__*) ;
 TYPE_5__* ff_get_video_buffer (TYPE_6__*,int,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    DelogoContext *s = inlink->dst->priv;
    AVFilterLink *outlink = inlink->dst->outputs[0];
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    AVFrame *out;
    int hsub0 = desc->log2_chroma_w;
    int vsub0 = desc->log2_chroma_h;
    int direct = 0;
    int plane;
    AVRational sar;
    int ret;

    s->var_values[VAR_N] = inlink->frame_count_out;
    s->var_values[VAR_T] = TS2T(in->pts, inlink->time_base);
    s->x = av_expr_eval(s->x_pexpr, s->var_values, s);
    s->y = av_expr_eval(s->y_pexpr, s->var_values, s);
    s->w = av_expr_eval(s->w_pexpr, s->var_values, s);
    s->h = av_expr_eval(s->h_pexpr, s->var_values, s);

    if (s->x + (s->band - 1) <= 0 || s->x + s->w - (s->band*2 - 2) > inlink->w ||
        s->y + (s->band - 1) <= 0 || s->y + s->h - (s->band*2 - 2) > inlink->h) {
        av_log(s, AV_LOG_WARNING, "Logo area is outside of the frame,"
               " auto set the area inside of the frame\n");
    }

    if (s->x + (s->band - 1) <= 0)
        s->x = 1 + s->band;
    if (s->y + (s->band - 1) <= 0)
        s->y = 1 + s->band;
    if (s->x + s->w - (s->band*2 - 2) > inlink->w)
        s->w = inlink->w - s->x - (s->band*2 - 2);
    if (s->y + s->h - (s->band*2 - 2) > inlink->h)
        s->h = inlink->h - s->y - (s->band*2 - 2);

    ret = config_input(inlink);
    if (ret < 0) {
        av_frame_free(&in);
        return ret;
    }

    s->w += s->band*2;
    s->h += s->band*2;
    s->x -= s->band;
    s->y -= s->band;

    if (av_frame_is_writable(in)) {
        direct = 1;
        out = in;
    } else {
        out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
        if (!out) {
            av_frame_free(&in);
            return AVERROR(ENOMEM);
        }

        av_frame_copy_props(out, in);
    }

    sar = in->sample_aspect_ratio;

    if (!sar.num)
        sar.num = sar.den = 1;

    for (plane = 0; plane < desc->nb_components; plane++) {
        int hsub = plane == 1 || plane == 2 ? hsub0 : 0;
        int vsub = plane == 1 || plane == 2 ? vsub0 : 0;

        apply_delogo(out->data[plane], out->linesize[plane],
                     in ->data[plane], in ->linesize[plane],
                     AV_CEIL_RSHIFT(inlink->w, hsub),
                     AV_CEIL_RSHIFT(inlink->h, vsub),
                     sar, s->x>>hsub, s->y>>vsub,


                     AV_CEIL_RSHIFT(s->w + (s->x & ((1<<hsub)-1)), hsub),
                     AV_CEIL_RSHIFT(s->h + (s->y & ((1<<vsub)-1)), vsub),
                     s->band>>FFMIN(hsub, vsub),
                     s->show, direct);
    }

    if (!direct)
        av_frame_free(&in);

    return ff_filter_frame(outlink, out);
}
