
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double sum; double window_size; scalar_t__* window_current; } ;
typedef TYPE_1__ SilenceRemoveContext ;


 scalar_t__ fabs (double) ;

__attribute__((used)) static double compute_peak(SilenceRemoveContext *s, double sample)
{
    double new_sum;

    new_sum = s->sum;
    new_sum -= *s->window_current;
    new_sum += fabs(sample);

    return new_sum / s->window_size;
}
