
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int format; TYPE_1__* dst; } ;
struct TYPE_10__ {int flags; int log2_chroma_h; int log2_chroma_w; } ;
struct TYPE_9__ {int bpp; int alpha; int is_packed_rgb; int black_level; int black_level_scaled; int rgba_map; int vsub; int hsub; } ;
struct TYPE_8__ {TYPE_2__* priv; } ;
typedef TYPE_2__ FadeContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;
typedef TYPE_4__ AVFilterLink ;


 int AV_PIX_FMT_FLAG_ALPHA ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 int av_get_bits_per_pixel (TYPE_3__ const*) ;
 TYPE_3__* av_pix_fmt_desc_get (int ) ;
 scalar_t__ ff_fill_rgba_map (int ,int ) ;
 scalar_t__ ff_fmt_is_in (int ,int ) ;
 int studio_level_pix_fmts ;

__attribute__((used)) static int config_props(AVFilterLink *inlink)
{
    FadeContext *s = inlink->dst->priv;
    const AVPixFmtDescriptor *pixdesc = av_pix_fmt_desc_get(inlink->format);

    s->hsub = pixdesc->log2_chroma_w;
    s->vsub = pixdesc->log2_chroma_h;

    s->bpp = pixdesc->flags & AV_PIX_FMT_FLAG_PLANAR ?
             1 :
             av_get_bits_per_pixel(pixdesc) >> 3;
    s->alpha &= !!(pixdesc->flags & AV_PIX_FMT_FLAG_ALPHA);
    s->is_packed_rgb = ff_fill_rgba_map(s->rgba_map, inlink->format) >= 0;


    s->black_level =
            ff_fmt_is_in(inlink->format, studio_level_pix_fmts) && !s->alpha ? 16 : 0;


    s->black_level_scaled = (s->black_level << 16) + 32768;
    return 0;
}
