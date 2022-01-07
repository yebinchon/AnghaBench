
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int * table; } ;
struct TYPE_5__ {int * process; int * dst; int * src; TYPE_2__* instance; } ;
typedef int SwsSlice ;
typedef TYPE_1__ SwsFilterDescriptor ;
typedef TYPE_2__ GammaContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_2__* av_malloc (int) ;
 int gamma_convert ;

int ff_init_gamma_convert(SwsFilterDescriptor *desc, SwsSlice * src, uint16_t *table)
{
    GammaContext *li = av_malloc(sizeof(GammaContext));
    if (!li)
        return AVERROR(ENOMEM);
    li->table = table;

    desc->instance = li;
    desc->src = src;
    desc->dst = ((void*)0);
    desc->process = &gamma_convert;

    return 0;
}
