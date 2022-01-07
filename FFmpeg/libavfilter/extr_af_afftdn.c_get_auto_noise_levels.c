
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int noise_band_count; int floor; } ;
struct TYPE_5__ {int* noise_band_auto_var; } ;
typedef TYPE_1__ DeNoiseChannel ;
typedef TYPE_2__ AudioFFTDeNoiseContext ;


 double C ;
 double log (int) ;

__attribute__((used)) static void get_auto_noise_levels(AudioFFTDeNoiseContext *s,
                                  DeNoiseChannel *dnch,
                                  double *levels)
{
    if (s->noise_band_count > 0) {
        for (int i = 0; i < s->noise_band_count; i++) {
            levels[i] = (1.0 / C) * log(dnch->noise_band_auto_var[i] / s->floor) - 100.0;
        }
        if (s->noise_band_count < 15) {
            for (int i = s->noise_band_count; i < 15; i++)
                levels[i] = levels[i - 1];
        }
    } else {
        for (int i = 0; i < 15; i++) {
            levels[i] = -100.0;
        }
    }
}
