
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_13__ ;
typedef struct TYPE_21__ TYPE_12__ ;
typedef struct TYPE_20__ TYPE_11__ ;
typedef struct TYPE_19__ TYPE_10__ ;


struct TYPE_31__ {int sync; void* after; void* before; int time_base; } ;
struct TYPE_30__ {int* planewidth; int* planeheight; int nb_planes; scalar_t__* depth; } ;
struct TYPE_22__ {int on_event; TYPE_7__* opaque; TYPE_9__* in; } ;
struct TYPE_29__ {int nb_inputs; int* planewidth; int* planeheight; int nb_planes; int** map; TYPE_13__ fs; TYPE_6__* outdesc; } ;
struct TYPE_28__ {TYPE_5__* comp; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_27__ {int depth; } ;
struct TYPE_26__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_25__ {int depth; } ;
struct TYPE_24__ {int name; } ;
struct TYPE_23__ {int name; } ;
struct TYPE_21__ {TYPE_2__* output_pads; TYPE_1__* input_pads; TYPE_11__** inputs; TYPE_7__* priv; } ;
struct TYPE_20__ {int w; int h; int time_base; int format; TYPE_4__ sample_aspect_ratio; int frame_rate; TYPE_12__* src; } ;
struct TYPE_19__ {TYPE_3__* comp; int log2_chroma_h; int log2_chroma_w; } ;
typedef TYPE_7__ MergePlanesContext ;
typedef TYPE_8__ InputParam ;
typedef TYPE_9__ FFFrameSyncIn ;
typedef TYPE_10__ AVPixFmtDescriptor ;
typedef TYPE_11__ AVFilterLink ;
typedef TYPE_12__ AVFilterContext ;


 int AVERROR (int ) ;
 void* AV_CEIL_RSHIFT (int,int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 void* EXT_STOP ;
 int av_log (TYPE_12__*,int ,char*,int const,int const,...) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_10__* av_pix_fmt_desc_get (int ) ;
 int ff_framesync_configure (TYPE_13__*) ;
 int ff_framesync_init (TYPE_13__*,TYPE_12__*,int) ;
 int process_frame ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    MergePlanesContext *s = ctx->priv;
    InputParam inputsp[4];
    FFFrameSyncIn *in;
    int i, ret;

    if ((ret = ff_framesync_init(&s->fs, ctx, s->nb_inputs)) < 0)
        return ret;

    in = s->fs.in;
    s->fs.opaque = s;
    s->fs.on_event = process_frame;

    outlink->w = ctx->inputs[0]->w;
    outlink->h = ctx->inputs[0]->h;
    outlink->time_base = ctx->inputs[0]->time_base;
    outlink->frame_rate = ctx->inputs[0]->frame_rate;
    outlink->sample_aspect_ratio = ctx->inputs[0]->sample_aspect_ratio;

    s->planewidth[1] =
    s->planewidth[2] = AV_CEIL_RSHIFT(((s->outdesc->comp[1].depth > 8) + 1) * outlink->w, s->outdesc->log2_chroma_w);
    s->planewidth[0] =
    s->planewidth[3] = ((s->outdesc->comp[0].depth > 8) + 1) * outlink->w;
    s->planeheight[1] =
    s->planeheight[2] = AV_CEIL_RSHIFT(outlink->h, s->outdesc->log2_chroma_h);
    s->planeheight[0] =
    s->planeheight[3] = outlink->h;

    for (i = 0; i < s->nb_inputs; i++) {
        InputParam *inputp = &inputsp[i];
        AVFilterLink *inlink = ctx->inputs[i];
        const AVPixFmtDescriptor *indesc = av_pix_fmt_desc_get(inlink->format);
        int j;

        if (outlink->sample_aspect_ratio.num != inlink->sample_aspect_ratio.num ||
            outlink->sample_aspect_ratio.den != inlink->sample_aspect_ratio.den) {
            av_log(ctx, AV_LOG_ERROR, "input #%d link %s SAR %d:%d "
                                      "does not match output link %s SAR %d:%d\n",
                                      i, ctx->input_pads[i].name,
                                      inlink->sample_aspect_ratio.num,
                                      inlink->sample_aspect_ratio.den,
                                      ctx->output_pads[0].name,
                                      outlink->sample_aspect_ratio.num,
                                      outlink->sample_aspect_ratio.den);
            return AVERROR(EINVAL);
        }

        inputp->planewidth[1] =
        inputp->planewidth[2] = AV_CEIL_RSHIFT(((indesc->comp[1].depth > 8) + 1) * inlink->w, indesc->log2_chroma_w);
        inputp->planewidth[0] =
        inputp->planewidth[3] = ((indesc->comp[0].depth > 8) + 1) * inlink->w;
        inputp->planeheight[1] =
        inputp->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, indesc->log2_chroma_h);
        inputp->planeheight[0] =
        inputp->planeheight[3] = inlink->h;
        inputp->nb_planes = av_pix_fmt_count_planes(inlink->format);

        for (j = 0; j < inputp->nb_planes; j++)
            inputp->depth[j] = indesc->comp[j].depth;

        in[i].time_base = inlink->time_base;
        in[i].sync = 1;
        in[i].before = EXT_STOP;
        in[i].after = EXT_STOP;
    }

    for (i = 0; i < s->nb_planes; i++) {
        const int input = s->map[i][1];
        const int plane = s->map[i][0];
        InputParam *inputp = &inputsp[input];

        if (plane + 1 > inputp->nb_planes) {
            av_log(ctx, AV_LOG_ERROR, "input %d does not have %d plane\n",
                                      input, plane);
            goto fail;
        }
        if (s->outdesc->comp[i].depth != inputp->depth[plane]) {
            av_log(ctx, AV_LOG_ERROR, "output plane %d depth %d does not "
                                      "match input %d plane %d depth %d\n",
                                      i, s->outdesc->comp[i].depth,
                                      input, plane, inputp->depth[plane]);
            goto fail;
        }
        if (s->planewidth[i] != inputp->planewidth[plane]) {
            av_log(ctx, AV_LOG_ERROR, "output plane %d width %d does not "
                                      "match input %d plane %d width %d\n",
                                      i, s->planewidth[i],
                                      input, plane, inputp->planewidth[plane]);
            goto fail;
        }
        if (s->planeheight[i] != inputp->planeheight[plane]) {
            av_log(ctx, AV_LOG_ERROR, "output plane %d height %d does not "
                                      "match input %d plane %d height %d\n",
                                      i, s->planeheight[i],
                                      input, plane, inputp->planeheight[plane]);
            goto fail;
        }
    }

    return ff_framesync_configure(&s->fs);
fail:
    return AVERROR(EINVAL);
}
