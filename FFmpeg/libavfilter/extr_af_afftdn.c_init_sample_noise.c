
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* noise_band_norm; double* noise_band_avr; double* noise_band_avi; double* noise_band_var; } ;
typedef TYPE_1__ DeNoiseChannel ;



__attribute__((used)) static void init_sample_noise(DeNoiseChannel *dnch)
{
    for (int i = 0; i < 15; i++) {
        dnch->noise_band_norm[i] = 0.0;
        dnch->noise_band_avr[i] = 0.0;
        dnch->noise_band_avi[i] = 0.0;
        dnch->noise_band_var[i] = 0.0;
    }
}
