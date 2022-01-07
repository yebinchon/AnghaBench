
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__* priv; } ;
struct TYPE_12__ {int w; int format; TYPE_5__* dst; } ;
struct TYPE_11__ {TYPE_1__* comp; int nb_components; } ;
struct TYPE_10__ {int bpp; int step; int linesize; int rgba_map; int nb_comp; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ ColorLevelsContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int av_get_padded_bits_per_pixel (TYPE_3__ const*) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int ff_fill_rgba_map (int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ColorLevelsContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    s->nb_comp = desc->nb_components;
    s->bpp = desc->comp[0].depth >> 3;
    s->step = (av_get_padded_bits_per_pixel(desc) >> 3) / s->bpp;
    s->linesize = inlink->w * s->step;
    ff_fill_rgba_map(s->rgba_map, inlink->format);

    return 0;
}
