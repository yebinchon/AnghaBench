
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ thr_weight; int threshold; int* cum_prob; int num_syms; int* weights; } ;
typedef TYPE_1__ Model ;


 scalar_t__ THRESH_ADAPTIVE ;
 int model_calc_threshold (TYPE_1__*) ;

__attribute__((used)) static void model_rescale_weights(Model *m)
{
    int i;
    int cum_prob;

    if (m->thr_weight == THRESH_ADAPTIVE)
        m->threshold = model_calc_threshold(m);
    while (m->cum_prob[0] > m->threshold) {
        cum_prob = 0;
        for (i = m->num_syms; i >= 0; i--) {
            m->cum_prob[i] = cum_prob;
            m->weights[i] = (m->weights[i] + 1) >> 1;
            cum_prob += m->weights[i];
        }
    }
}
