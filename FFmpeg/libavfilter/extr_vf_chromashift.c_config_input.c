
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* filter; TYPE_3__* priv; } ;
struct TYPE_13__ {void* w; int format; void* h; TYPE_6__* dst; } ;
struct TYPE_12__ {int log2_chroma_w; int log2_chroma_h; int nb_components; TYPE_2__* comp; } ;
struct TYPE_11__ {int is_rgbashift; int depth; int linesize; void** width; void** height; int filter_slice; scalar_t__ edge; int nb_planes; } ;
struct TYPE_10__ {int depth; } ;
struct TYPE_9__ {int name; } ;
typedef TYPE_3__ ChromaShiftContext ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 void* AV_CEIL_RSHIFT (void*,int ) ;
 int av_image_fill_linesizes (int ,int ,void*) ;
 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int rgbasmear_slice16 ;
 int rgbasmear_slice8 ;
 int rgbawrap_slice16 ;
 int rgbawrap_slice8 ;
 int smear_slice16 ;
 int smear_slice8 ;
 int strcmp (int ,char*) ;
 int wrap_slice16 ;
 int wrap_slice8 ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ChromaShiftContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    s->is_rgbashift = !strcmp(ctx->filter->name, "rgbashift");
    s->depth = desc->comp[0].depth;
    s->nb_planes = desc->nb_components;
    if (s->is_rgbashift) {
        if (s->edge)
            s->filter_slice = s->depth > 8 ? rgbawrap_slice16 : rgbawrap_slice8;
        else
            s->filter_slice = s->depth > 8 ? rgbasmear_slice16 : rgbasmear_slice8;
    } else {
        if (s->edge)
            s->filter_slice = s->depth > 8 ? wrap_slice16 : wrap_slice8;
        else
            s->filter_slice = s->depth > 8 ? smear_slice16 : smear_slice8;
    }
    s->height[1] = s->height[2] = AV_CEIL_RSHIFT(inlink->h, desc->log2_chroma_h);
    s->height[0] = s->height[3] = inlink->h;
    s->width[1] = s->width[2] = AV_CEIL_RSHIFT(inlink->w, desc->log2_chroma_w);
    s->width[0] = s->width[3] = inlink->w;

    return av_image_fill_linesizes(s->linesize, inlink->format, inlink->w);
}
