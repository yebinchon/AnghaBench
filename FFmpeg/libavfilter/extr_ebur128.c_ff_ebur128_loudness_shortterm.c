
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FFEBUR128State ;


 double HUGE_VAL ;
 int ebur128_energy_shortterm (int *,double*) ;
 double ebur128_energy_to_loudness (double) ;

int ff_ebur128_loudness_shortterm(FFEBUR128State * st, double *out)
{
    double energy;
    int error = ebur128_energy_shortterm(st, &energy);
    if (error) {
        return error;
    } else if (energy <= 0.0) {
        *out = -HUGE_VAL;
        return 0;
    }
    *out = ebur128_energy_to_loudness(energy);
    return 0;
}
