
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VagueDenoiserContext ;


 int const NPAD ;
 float* analysis_high ;
 float* analysis_low ;
 int symmetric_extension (float*,int const,int,int) ;

__attribute__((used)) static void transform_step(float *input, float *output, const int size, const int low_size, VagueDenoiserContext *s)
{
    int i;

    symmetric_extension(input, size, 1, 1);

    for (i = NPAD; i < NPAD + low_size; i++) {
        const float a = input[2 * i - 14] * analysis_low[0];
        const float b = input[2 * i - 13] * analysis_low[1];
        const float c = input[2 * i - 12] * analysis_low[2];
        const float d = input[2 * i - 11] * analysis_low[3];
        const float e = input[2 * i - 10] * analysis_low[4];
        const float f = input[2 * i - 9] * analysis_low[3];
        const float g = input[2 * i - 8] * analysis_low[2];
        const float h = input[2 * i - 7] * analysis_low[1];
        const float k = input[2 * i - 6] * analysis_low[0];

        output[i] = a + b + c + d + e + f + g + h + k;
    }

    for (i = NPAD; i < NPAD + low_size; i++) {
        const float a = input[2 * i - 12] * analysis_high[0];
        const float b = input[2 * i - 11] * analysis_high[1];
        const float c = input[2 * i - 10] * analysis_high[2];
        const float d = input[2 * i - 9] * analysis_high[3];
        const float e = input[2 * i - 8] * analysis_high[2];
        const float f = input[2 * i - 7] * analysis_high[1];
        const float g = input[2 * i - 6] * analysis_high[0];

        output[i + low_size] = a + b + c + d + e + f + g;
    }
}
