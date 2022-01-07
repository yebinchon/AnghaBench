
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int output_pads; TYPE_1__* priv; TYPE_3__** inputs; } ;
struct TYPE_9__ {int srcpad; void* w; void* h; int format; TYPE_4__* src; } ;
struct TYPE_8__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_7__ {int* map; } ;
typedef TYPE_1__ ExtractPlanesContext ;
typedef TYPE_2__ AVPixFmtDescriptor ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 void* AV_CEIL_RSHIFT (void*,int ) ;
 TYPE_2__* av_pix_fmt_desc_get (int ) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    ExtractPlanesContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);
    const int output = outlink->srcpad - ctx->output_pads;

    if (s->map[output] == 1 || s->map[output] == 2) {
        outlink->h = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
        outlink->w = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    }

    return 0;
}
