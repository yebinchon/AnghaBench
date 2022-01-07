
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* weights; size_t num_syms; int* cum_prob; } ;
typedef TYPE_1__ Model ;


 int FFMIN (int,int) ;

__attribute__((used)) static int model_calc_threshold(Model *m)
{
    int thr;

    thr = 2 * m->weights[m->num_syms] - 1;
    thr = ((thr >> 1) + 4 * m->cum_prob[0]) / thr;

    return FFMIN(thr, 0x3FFF);
}
