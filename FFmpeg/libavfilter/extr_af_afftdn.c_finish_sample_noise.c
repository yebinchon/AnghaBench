
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int noise_band_count; int floor; } ;
struct TYPE_5__ {int* noise_band_avr; int* noise_band_norm; int* noise_band_avi; int* noise_band_var; int* noise_band_auto_var; } ;
typedef TYPE_1__ DeNoiseChannel ;
typedef TYPE_2__ AudioFFTDeNoiseContext ;


 double C ;
 double log (int) ;

__attribute__((used)) static void finish_sample_noise(AudioFFTDeNoiseContext *s,
                                DeNoiseChannel *dnch,
                                double *sample_noise)
{
    for (int i = 0; i < s->noise_band_count; i++) {
        dnch->noise_band_avr[i] /= dnch->noise_band_norm[i];
        dnch->noise_band_avi[i] /= dnch->noise_band_norm[i];
        dnch->noise_band_var[i] /= dnch->noise_band_norm[i];
        dnch->noise_band_var[i] -= dnch->noise_band_avr[i] * dnch->noise_band_avr[i] +
                                   dnch->noise_band_avi[i] * dnch->noise_band_avi[i];
        dnch->noise_band_auto_var[i] = dnch->noise_band_var[i];
        sample_noise[i] = (1.0 / C) * log(dnch->noise_band_var[i] / s->floor) - 100.0;
    }
    if (s->noise_band_count < 15) {
        for (int i = s->noise_band_count; i < 15; i++)
            sample_noise[i] = sample_noise[i - 1];
    }
}
