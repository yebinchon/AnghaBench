
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {int h; int w; int format; TYPE_4__* dst; } ;
struct TYPE_10__ {int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_9__ {int mode; int dctB; int requantize; int src; void* temp_stride; int vsub; int hsub; } ;
typedef TYPE_1__ PP7Context ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 scalar_t__ ARCH_X86 ;
 int AVERROR (int ) ;
 int ENOMEM ;
 void* FFALIGN (int,int) ;
 int av_malloc_array (void*,int const) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;
 int dctB_c ;
 int ff_pp7_init_x86 (TYPE_1__*) ;
 int hardthresh_c ;
 int init_thres2 (TYPE_1__*) ;
 int mediumthresh_c ;
 int softthresh_c ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    PP7Context *pp7 = ctx->priv;
    const int h = FFALIGN(inlink->h + 16, 16);
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    pp7->hsub = desc->log2_chroma_w;
    pp7->vsub = desc->log2_chroma_h;

    pp7->temp_stride = FFALIGN(inlink->w + 16, 16);
    pp7->src = av_malloc_array(pp7->temp_stride, (h + 8) * sizeof(uint8_t));

    if (!pp7->src)
        return AVERROR(ENOMEM);

    init_thres2(pp7);

    switch (pp7->mode) {
        case 0: pp7->requantize = hardthresh_c; break;
        case 1: pp7->requantize = softthresh_c; break;
        default:
        case 2: pp7->requantize = mediumthresh_c; break;
    }

    pp7->dctB = dctB_c;

    if (ARCH_X86)
        ff_pp7_init_x86(pp7);

    return 0;
}
