
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long samplerate; } ;
typedef TYPE_1__ FFEBUR128State ;


 double HUGE_VAL ;
 int ebur128_energy_in_interval (TYPE_1__*,size_t,double*) ;
 double ebur128_energy_to_loudness (double) ;

int ff_ebur128_loudness_window(FFEBUR128State * st,
                               unsigned long window, double *out)
{
    double energy;
    size_t interval_frames = st->samplerate * window / 1000;
    int error = ebur128_energy_in_interval(st, interval_frames, &energy);
    if (error) {
        return error;
    } else if (energy <= 0.0) {
        *out = -HUGE_VAL;
        return 0;
    }
    *out = ebur128_energy_to_loudness(energy);
    return 0;
}
