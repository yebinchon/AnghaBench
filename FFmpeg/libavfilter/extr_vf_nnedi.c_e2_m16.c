
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_clipf (float,int ,int ) ;
 float exp (int ) ;
 int exp_hi ;
 int exp_lo ;

__attribute__((used)) static void e2_m16(float *s, const int n)
{
    int i;

    for (i = 0; i < n; i++)
        s[i] = exp(av_clipf(s[i], exp_lo, exp_hi));
}
