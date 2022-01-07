
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dot_productf; } ;
typedef TYPE_1__ CELPMContext ;


 scalar_t__ HAVE_MIPSFPU ;
 int ff_celp_math_init_mips (TYPE_1__*) ;
 int ff_dot_productf ;

void ff_celp_math_init(CELPMContext *c)
{
    c->dot_productf = ff_dot_productf;

    if(HAVE_MIPSFPU)
        ff_celp_math_init_mips(c);
}
