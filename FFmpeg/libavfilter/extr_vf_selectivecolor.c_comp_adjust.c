
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORRECTION_METHOD_RELATIVE ;
 int av_clipf (float,float const,float const) ;
 int lrint (int) ;

__attribute__((used)) static inline int comp_adjust(int scale, float value, float adjust, float k, int correction_method)
{
    const float min = -value;
    const float max = 1. - value;
    float res = (-1. - adjust) * k - adjust;
    if (correction_method == CORRECTION_METHOD_RELATIVE)
        res *= max;
    return lrint(av_clipf(res, min, max) * scale);
}
