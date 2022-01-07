
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* priv; } ;
struct TYPE_11__ {void* w; void* h; int format; TYPE_5__* dst; } ;
struct TYPE_10__ {int log2_chroma_w; int log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_9__ {void** widthy; void** heighty; int depthy; int * var_values; int nb_planesy; } ;
struct TYPE_8__ {int depth; } ;
typedef TYPE_2__ LUT2Context ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 void* AV_CEIL_RSHIFT (void*,int) ;
 size_t VAR_BITDEPTHY ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_inputy(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    LUT2Context *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    int hsub = desc->log2_chroma_w;
    int vsub = desc->log2_chroma_h;

    s->nb_planesy = av_pix_fmt_count_planes(inlink->format);
    s->depthy = desc->comp[0].depth;
    s->var_values[VAR_BITDEPTHY] = s->depthy;
    s->heighty[1] = s->heighty[2] = AV_CEIL_RSHIFT(inlink->h, vsub);
    s->heighty[0] = s->heighty[3] = inlink->h;
    s->widthy[1] = s->widthy[2] = AV_CEIL_RSHIFT(inlink->w, hsub);
    s->widthy[0] = s->widthy[3] = inlink->w;

    return 0;
}
