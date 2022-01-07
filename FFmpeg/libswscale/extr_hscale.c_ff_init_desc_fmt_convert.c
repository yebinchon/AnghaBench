
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int * pal; } ;
struct TYPE_9__ {int alpha; int * process; TYPE_1__* dst; TYPE_1__* src; TYPE_3__* instance; } ;
struct TYPE_8__ {int fmt; } ;
typedef TYPE_1__ SwsSlice ;
typedef TYPE_2__ SwsFilterDescriptor ;
typedef TYPE_3__ ColorContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_3__* av_malloc (int) ;
 scalar_t__ isALPHA (int ) ;
 int lum_convert ;

int ff_init_desc_fmt_convert(SwsFilterDescriptor *desc, SwsSlice * src, SwsSlice *dst, uint32_t *pal)
{
    ColorContext * li = av_malloc(sizeof(ColorContext));
    if (!li)
        return AVERROR(ENOMEM);
    li->pal = pal;
    desc->instance = li;

    desc->alpha = isALPHA(src->fmt) && isALPHA(dst->fmt);
    desc->src =src;
    desc->dst = dst;
    desc->process = &lum_convert;

    return 0;
}
