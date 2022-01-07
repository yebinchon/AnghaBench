
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void ac3_downmix_5_to_1_symmetric_c(float **samples, float **matrix,
                                           int len)
{
    int i;
    float front_mix = matrix[0][0];
    float center_mix = matrix[0][1];
    float surround_mix = matrix[0][3];

    for (i = 0; i < len; i++) {
        samples[0][i] = samples[0][i] * front_mix +
                        samples[1][i] * center_mix +
                        samples[2][i] * front_mix +
                        samples[3][i] * surround_mix +
                        samples[4][i] * surround_mix;
    }
}
