
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* d; } ;
struct TYPE_5__ {int samples_in_100ms; } ;
typedef TYPE_2__ FFEBUR128State ;


 double HUGE_VAL ;
 int ebur128_energy_in_interval (TYPE_2__*,int,double*) ;
 double ebur128_energy_to_loudness (double) ;

int ff_ebur128_loudness_momentary(FFEBUR128State * st, double *out)
{
    double energy;
    int error = ebur128_energy_in_interval(st, st->d->samples_in_100ms * 4,
                                           &energy);
    if (error) {
        return error;
    } else if (energy <= 0.0) {
        *out = -HUGE_VAL;
        return 0;
    }
    *out = ebur128_energy_to_loudness(energy);
    return 0;
}
