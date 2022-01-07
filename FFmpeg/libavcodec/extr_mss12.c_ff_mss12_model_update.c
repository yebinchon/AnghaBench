
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* weights; int* idx2sym; int * cum_prob; } ;
typedef TYPE_1__ Model ;


 int model_rescale_weights (TYPE_1__*) ;

void ff_mss12_model_update(Model *m, int val)
{
    int i;

    if (m->weights[val] == m->weights[val - 1]) {
        for (i = val; m->weights[i - 1] == m->weights[val]; i--);
        if (i != val) {
            int sym1, sym2;

            sym1 = m->idx2sym[val];
            sym2 = m->idx2sym[i];

            m->idx2sym[val] = sym2;
            m->idx2sym[i] = sym1;

            val = i;
        }
    }
    m->weights[val]++;
    for (i = val - 1; i >= 0; i--)
        m->cum_prob[i]++;
    model_rescale_weights(m);
}
