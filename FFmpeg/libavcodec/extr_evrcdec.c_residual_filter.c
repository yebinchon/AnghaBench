
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILTER_ORDER ;

__attribute__((used)) static void residual_filter(float *output, const float *input,
                            const float *coef, float *memory, int length)
{
    float sum;
    int i, j;

    for (i = 0; i < length; i++) {
        sum = input[i];

        for (j = FILTER_ORDER - 1; j > 0; j--) {
            sum += coef[j] * memory[j];
            memory[j] = memory[j - 1];
        }
        sum += coef[0] * memory[0];
        memory[0] = input[i];
        output[i] = sum;
    }
}
