
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nsubbands; float*** time_samples; unsigned int* ch_pres; } ;
typedef TYPE_1__ DCALbrDecoder ;


 int DCA_LBR_TIME_SAMPLES ;
 scalar_t__ fabs (float) ;
 float lbr_rand (TYPE_1__*,int) ;
 int memset (float*,int ,int) ;

__attribute__((used)) static void random_ts(DCALbrDecoder *s, int ch1, int ch2)
{
    int i, j, k, ch, sb;

    for (ch = ch1; ch <= ch2; ch++) {
        for (sb = 0; sb < s->nsubbands; sb++) {
            float *samples = s->time_samples[ch][sb];

            if (s->ch_pres[ch] & (1U << sb))
                continue;

            if (sb < 2) {

                memset(samples, 0, DCA_LBR_TIME_SAMPLES * sizeof(float));
            } else if (sb < 10) {
                for (i = 0; i < DCA_LBR_TIME_SAMPLES; i++)
                    samples[i] = lbr_rand(s, sb);
            } else {
                for (i = 0; i < DCA_LBR_TIME_SAMPLES / 8; i++, samples += 8) {
                    float accum[8] = { 0 };


                    for (k = 2; k < 6; k++) {
                        float *other = &s->time_samples[ch][k][i * 8];
                        for (j = 0; j < 8; j++)
                            accum[j] += fabs(other[j]);
                    }

                    for (j = 0; j < 8; j++)
                        samples[j] = (accum[j] * 0.25f + 0.5f) * lbr_rand(s, sb);
                }
            }
        }
    }
}
