
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lfe_quant; int lfe_peak_cb; int lfe_scale_factor; scalar_t__ lfe_channel; } ;
typedef TYPE_1__ DCAEncContext ;


 int calc_one_scale (TYPE_1__*,int ,int,int *) ;

__attribute__((used)) static void calc_lfe_scales(DCAEncContext *c)
{
    if (c->lfe_channel)
        c->lfe_scale_factor = calc_one_scale(c, c->lfe_peak_cb, 11, &c->lfe_quant);
}
