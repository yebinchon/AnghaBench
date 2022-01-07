
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int format; TYPE_3__* dst; } ;
struct TYPE_5__ {int bpp; int rgba_map; } ;
typedef TYPE_1__ HisteqContext ;
typedef int AVPixFmtDescriptor ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int av_get_bits_per_pixel (int const*) ;
 int * av_pix_fmt_desc_get (int ) ;
 int ff_fill_rgba_map (int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    HisteqContext *histeq = ctx->priv;
    const AVPixFmtDescriptor *pix_desc = av_pix_fmt_desc_get(inlink->format);

    histeq->bpp = av_get_bits_per_pixel(pix_desc) / 8;
    ff_fill_rgba_map(histeq->rgba_map, inlink->format);

    return 0;
}
