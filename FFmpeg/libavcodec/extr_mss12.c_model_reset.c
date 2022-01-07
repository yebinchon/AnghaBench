
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_syms; int* weights; int* cum_prob; int* idx2sym; } ;
typedef TYPE_1__ Model ;



__attribute__((used)) static void model_reset(Model *m)
{
    int i;

    for (i = 0; i <= m->num_syms; i++) {
        m->weights[i] = 1;
        m->cum_prob[i] = m->num_syms - i;
    }
    m->weights[0] = 0;
    for (i = 0; i < m->num_syms; i++)
        m->idx2sym[i + 1] = i;
}
