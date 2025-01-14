
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_16__ {int filter_scale; int filter_complex_high; int filter_simple_high; int filter_complex_low; int filter_simple_low; } ;
struct TYPE_12__ {int* planeheight; int nb_threads; int max; TYPE_6__ dsp; void** work_line; int * linesize; int nb_planes; } ;
typedef TYPE_2__ W3FDIFContext ;
struct TYPE_15__ {TYPE_2__* priv; } ;
struct TYPE_14__ {int h; int format; int w; TYPE_5__* dst; } ;
struct TYPE_13__ {TYPE_1__* comp; int log2_chroma_h; } ;
struct TYPE_11__ {int depth; } ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 scalar_t__ ARCH_X86 ;
 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 int FFALIGN (int ,int) ;
 void* av_calloc (int,int) ;
 int av_image_fill_linesizes (int *,int ,int ) ;
 int av_log (TYPE_5__*,int ,char*) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 int ff_w3fdif_init_x86 (TYPE_6__*,int) ;
 int filter16_complex_high ;
 int filter16_complex_low ;
 int filter16_scale ;
 int filter16_simple_high ;
 int filter16_simple_low ;
 int filter_complex_high ;
 int filter_complex_low ;
 int filter_scale ;
 int filter_simple_high ;
 int filter_simple_low ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    W3FDIFContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int ret, i, depth;

    if ((ret = av_image_fill_linesizes(s->linesize, inlink->format, inlink->w)) < 0)
        return ret;

    s->planeheight[1] = s->planeheight[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->planeheight[0] = s->planeheight[3] = inlink->h;

    if (inlink->h < 3) {
        av_log(ctx, AV_LOG_ERROR, "Video of less than 3 lines is not supported\n");
        return AVERROR(EINVAL);
    }

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);
    s->nb_threads = ff_filter_get_nb_threads(ctx);
    s->work_line = av_calloc(s->nb_threads, sizeof(*s->work_line));
    if (!s->work_line)
        return AVERROR(ENOMEM);

    for (i = 0; i < s->nb_threads; i++) {
        s->work_line[i] = av_calloc(FFALIGN(s->linesize[0], 32), sizeof(*s->work_line[0]));
        if (!s->work_line[i])
            return AVERROR(ENOMEM);
    }

    depth = desc->comp[0].depth;
    s->max = ((1 << depth) - 1) * 256 * 128;
    if (depth <= 8) {
        s->dsp.filter_simple_low = filter_simple_low;
        s->dsp.filter_complex_low = filter_complex_low;
        s->dsp.filter_simple_high = filter_simple_high;
        s->dsp.filter_complex_high = filter_complex_high;
        s->dsp.filter_scale = filter_scale;
    } else {
        s->dsp.filter_simple_low = filter16_simple_low;
        s->dsp.filter_complex_low = filter16_complex_low;
        s->dsp.filter_simple_high = filter16_simple_high;
        s->dsp.filter_complex_high = filter16_complex_high;
        s->dsp.filter_scale = filter16_scale;
    }

    if (ARCH_X86)
        ff_w3fdif_init_x86(&s->dsp, depth);

    return 0;
}
