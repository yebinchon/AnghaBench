
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const sqrtf (float) ;

__attribute__((used)) static inline int quant(float coef, const float Q, const float rounding)
{
    float a = coef * Q;
    return sqrtf(a * sqrtf(a)) + rounding;
}
