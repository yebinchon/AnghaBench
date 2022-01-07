
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int celp_lp_zero_synthesis_filterf; int celp_lp_synthesis_filterf; } ;
typedef TYPE_1__ CELPFContext ;


 scalar_t__ HAVE_MIPSFPU ;
 int ff_celp_filter_init_mips (TYPE_1__*) ;
 int ff_celp_lp_synthesis_filterf ;
 int ff_celp_lp_zero_synthesis_filterf ;

void ff_celp_filter_init(CELPFContext *c)
{
    c->celp_lp_synthesis_filterf = ff_celp_lp_synthesis_filterf;
    c->celp_lp_zero_synthesis_filterf = ff_celp_lp_zero_synthesis_filterf;

    if(HAVE_MIPSFPU)
        ff_celp_filter_init_mips(c);
}
