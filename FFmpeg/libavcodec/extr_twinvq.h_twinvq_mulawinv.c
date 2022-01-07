
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float FFSIGN (float) ;
 float av_clipf (float,int,int) ;
 int exp (int) ;
 int fabs (float) ;
 int log (int) ;

__attribute__((used)) static inline float twinvq_mulawinv(float y, float clip, float mu)
{
    y = av_clipf(y / clip, -1, 1);
    return clip * FFSIGN(y) * (exp(log(1 + mu) * fabs(y)) - 1) / mu;
}
