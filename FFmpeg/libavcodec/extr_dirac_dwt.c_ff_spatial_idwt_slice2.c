
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int support; int decomposition_count; int width; int height; int stride; int (* spatial_compose ) (TYPE_2__*,int,int,int,int) ;TYPE_1__* cs; } ;
struct TYPE_5__ {scalar_t__ y; } ;
typedef TYPE_2__ DWTContext ;


 scalar_t__ FFMIN (int,int) ;
 int stub1 (TYPE_2__*,int,int,int,int) ;

void ff_spatial_idwt_slice2(DWTContext *d, int y)
{
    int level, support = d->support;

    for (level = d->decomposition_count-1; level >= 0; level--) {
        int wl = d->width >> level;
        int hl = d->height >> level;
        int stride_l = d->stride << level;

        while (d->cs[level].y <= FFMIN((y>>level)+support, hl))
            d->spatial_compose(d, level, wl, hl, stride_l);
    }
}
