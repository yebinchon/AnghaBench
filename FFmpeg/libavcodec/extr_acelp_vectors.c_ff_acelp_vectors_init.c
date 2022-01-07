
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weighted_vector_sumf; } ;
typedef TYPE_1__ ACELPVContext ;


 scalar_t__ HAVE_MIPSFPU ;
 int ff_acelp_vectors_init_mips (TYPE_1__*) ;
 int ff_weighted_vector_sumf ;

void ff_acelp_vectors_init(ACELPVContext *c)
{
    c->weighted_vector_sumf = ff_weighted_vector_sumf;

    if(HAVE_MIPSFPU)
        ff_acelp_vectors_init_mips(c);
}
