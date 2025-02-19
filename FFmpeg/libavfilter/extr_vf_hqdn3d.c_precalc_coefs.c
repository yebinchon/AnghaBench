
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 double FFMAX (int ,double) ;
 double FFMIN (double,double) ;
 int LUT_BITS ;
 int* av_malloc (int) ;
 double fabs (double) ;
 double log (double) ;
 int lrint (double) ;
 double pow (double,double) ;

__attribute__((used)) static int16_t *precalc_coefs(double dist25, int depth)
{
    int i;
    double gamma, simil, C;
    int16_t *ct = av_malloc((512<<LUT_BITS)*sizeof(int16_t));
    if (!ct)
        return ((void*)0);

    gamma = log(0.25) / log(1.0 - FFMIN(dist25,252.0)/255.0 - 0.00001);

    for (i = -256<<LUT_BITS; i < 256<<LUT_BITS; i++) {
        double f = ((i<<(9-LUT_BITS)) + (1<<(8-LUT_BITS)) - 1) / 512.0;
        simil = FFMAX(0, 1.0 - fabs(f) / 255.0);
        C = pow(simil, gamma) * 256.0 * f;
        ct[(256<<LUT_BITS)+i] = lrint(C);
    }

    ct[0] = !!dist25;
    return ct;
}
