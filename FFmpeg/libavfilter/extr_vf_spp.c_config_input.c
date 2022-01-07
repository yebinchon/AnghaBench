
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int h; int w; int format; TYPE_1__* dst; } ;
struct TYPE_12__ {int log2_chroma_h; int log2_chroma_w; TYPE_2__* comp; } ;
struct TYPE_11__ {void* src; void* temp; void* temp_linesize; int vsub; int hsub; int dct; } ;
struct TYPE_10__ {int depth; } ;
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef TYPE_3__ SPPContext ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;


 scalar_t__ ARCH_X86 ;
 int AVERROR (int ) ;
 int ENOMEM ;
 void* FFALIGN (int,int) ;
 void* av_malloc_array (void*,int const) ;
 int av_opt_set_int (int ,char*,int const,int ) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int avcodec_dct_init (int ) ;
 int ff_spp_init_x86 (TYPE_3__*) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    SPPContext *s = inlink->dst->priv;
    const int h = FFALIGN(inlink->h + 16, 16);
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    const int bps = desc->comp[0].depth;

    av_opt_set_int(s->dct, "bits_per_sample", bps, 0);
    avcodec_dct_init(s->dct);

    if (ARCH_X86)
        ff_spp_init_x86(s);

    s->hsub = desc->log2_chroma_w;
    s->vsub = desc->log2_chroma_h;
    s->temp_linesize = FFALIGN(inlink->w + 16, 16);
    s->temp = av_malloc_array(s->temp_linesize, h * sizeof(*s->temp));
    s->src = av_malloc_array(s->temp_linesize, h * sizeof(*s->src) * 2);

    if (!s->temp || !s->src)
        return AVERROR(ENOMEM);
    return 0;
}
