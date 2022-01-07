
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFMAX (int ,float) ;
 float FFMIN (float,int) ;
 int FFMIN3 (float,float,int) ;
 float av_clipf (float,int ,int) ;
 float fmodf (float,float) ;

__attribute__((used)) static float hfun(float n, float h, float s, float l)
{
    float a = s * FFMIN(l, 1. - l);
    float k = fmodf(n + h / 30.f, 12.f);

    return av_clipf(l - a * FFMAX(FFMIN3(k - 3.f, 9.f - k, 1), -1.f), 0, 1);
}
