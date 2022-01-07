
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_syms; int* weights; int upd_val; int till_rescale; scalar_t__ tot_weight; } ;
typedef TYPE_1__ Model ;


 int model_update (TYPE_1__*,int) ;

__attribute__((used)) static void model_reset(Model *m)
{
    int i;

    m->tot_weight = 0;
    for (i = 0; i < m->num_syms - 1; i++)
        m->weights[i] = 1;
    m->weights[m->num_syms - 1] = 0;

    m->upd_val = m->num_syms;
    m->till_rescale = 1;
    model_update(m, m->num_syms - 1);
    m->till_rescale =
    m->upd_val = (m->num_syms + 6) >> 1;
}
