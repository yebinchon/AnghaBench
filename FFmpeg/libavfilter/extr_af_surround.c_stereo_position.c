
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFMAX (int ,float) ;
 int M_LN10 ;
 float M_PI ;
 float M_PI_2 ;
 int av_assert2 (int) ;
 float av_clipf (int,int,int) ;
 int cosf (float) ;

__attribute__((used)) static void stereo_position(float a, float p, float *x, float *y)
{
    av_assert2(a >= -1.f && a <= 1.f);
    av_assert2(p >= 0.f && p <= M_PI);
    *x = av_clipf(a+a*FFMAX(0, p*p-M_PI_2), -1, 1);
    *y = av_clipf(cosf(a*M_PI_2+M_PI)*cosf(M_PI_2-p/M_PI)*M_LN10+1, -1, 1);
}
