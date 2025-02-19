
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
struct TYPE_12__ {int format; TYPE_5__* dst; } ;
struct TYPE_11__ {int nb_components; TYPE_1__* comp; } ;
struct TYPE_10__ {int nb_planes; int nb_components; int step; int remap_slice; } ;
struct TYPE_9__ {int depth; } ;
typedef TYPE_2__ RemapContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int av_get_padded_bits_per_pixel (TYPE_3__ const*) ;
 int av_pix_fmt_count_planes (int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 int remap_packed16_nearest_slice ;
 int remap_packed8_nearest_slice ;
 int remap_planar16_nearest_slice ;
 int remap_planar8_nearest_slice ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    RemapContext *s = ctx->priv;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(inlink->format);

    s->nb_planes = av_pix_fmt_count_planes(inlink->format);
    s->nb_components = desc->nb_components;

    if (desc->comp[0].depth == 8) {
        if (s->nb_planes > 1 || s->nb_components == 1) {
            s->remap_slice = remap_planar8_nearest_slice;
        } else {
            s->remap_slice = remap_packed8_nearest_slice;
        }
    } else {
        if (s->nb_planes > 1 || s->nb_components == 1) {
            s->remap_slice = remap_planar16_nearest_slice;
        } else {
            s->remap_slice = remap_packed16_nearest_slice;
        }
    }

    s->step = av_get_padded_bits_per_pixel(desc) >> 3;
    return 0;
}
