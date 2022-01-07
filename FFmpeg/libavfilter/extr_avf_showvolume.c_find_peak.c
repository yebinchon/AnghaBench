
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FFABS (float) ;
 float FFMAX (float,int ) ;

__attribute__((used)) static void find_peak(float *src, int nb_samples, float *peak, float factor)
{
    int i;

    *peak = 0;
    for (i = 0; i < nb_samples; i++)
        *peak = FFMAX(*peak, FFABS(src[i]));
}
