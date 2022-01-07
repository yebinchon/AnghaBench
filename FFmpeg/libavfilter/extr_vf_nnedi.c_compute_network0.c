
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int NNEDIContext ;


 scalar_t__ FFMAX (float,float) ;
 int dot_prod (int *,float const*,float const*,float*,int,int,float*) ;
 int elliott (float*,int) ;

__attribute__((used)) static void compute_network0(NNEDIContext *s, const float *input, const float *weights, uint8_t *d)
{
    float t, temp[12], scale = 1.0f;

    dot_prod(s, input, weights, temp, 4, 48, &scale);
    t = temp[0];
    elliott(temp, 4);
    temp[0] = t;
    dot_prod(s, temp, weights + 4 * 49, temp + 4, 4, 4, &scale);
    elliott(temp + 4, 4);
    dot_prod(s, temp, weights + 4 * 49 + 4 * 5, temp + 8, 4, 8, &scale);
    if (FFMAX(temp[10], temp[11]) <= FFMAX(temp[8], temp[9]))
        d[0] = 1;
    else
        d[0] = 0;
}
