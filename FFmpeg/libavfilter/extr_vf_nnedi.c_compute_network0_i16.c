
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int NNEDIContext ;


 scalar_t__ FFMAX (float,float) ;
 int dot_prod (int *,float*,float const*,float*,int,int,float*) ;
 int dot_prods (int *,float const*,float const*,float*,int,int,float*) ;
 int elliott (float*,int) ;

__attribute__((used)) static void compute_network0_i16(NNEDIContext *s, const float *inputf, const float *weightsf, uint8_t *d)
{
    const float *wf = weightsf + 2 * 48;
    float t, temp[12], scale = 1.0f;

    dot_prods(s, inputf, weightsf, temp, 4, 48, &scale);
    t = temp[0];
    elliott(temp, 4);
    temp[0] = t;
    dot_prod(s, temp, wf + 8, temp + 4, 4, 4, &scale);
    elliott(temp + 4, 4);
    dot_prod(s, temp, wf + 8 + 4 * 5, temp + 8, 4, 8, &scale);
    if (FFMAX(temp[10], temp[11]) <= FFMAX(temp[8], temp[9]))
        d[0] = 1;
    else
        d[0] = 0;
}
