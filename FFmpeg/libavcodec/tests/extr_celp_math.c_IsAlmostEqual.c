
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_assert0 (int) ;
 float fabsf (float) ;

__attribute__((used)) static inline void IsAlmostEqual(float A, float B, float epsilon)
{
    float diff = fabsf(A - B);
    float absa = fabsf(A);
    float absb = fabsf(B);
    float largest = (absb > absa) ? absb : absa;
    av_assert0(diff <= largest * epsilon);
}
