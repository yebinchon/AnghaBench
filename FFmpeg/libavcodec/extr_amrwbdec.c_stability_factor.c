
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFMAX (double,double) ;
 int LP_ORDER ;

__attribute__((used)) static float stability_factor(const float *isf, const float *isf_past)
{
    int i;
    float acc = 0.0;

    for (i = 0; i < LP_ORDER - 1; i++)
        acc += (isf[i] - isf_past[i]) * (isf[i] - isf_past[i]);



    return FFMAX(0.0, 1.25 - acc * 0.8 * 512);
}
