
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float cbrtf (float) ;
 float expf (float) ;
 float logf (float) ;
 float sqrtf (float) ;

__attribute__((used)) static float calculate_gamma(float v, float g)
{
    if (g == 1.0f)
        return v;
    if (g == 2.0f)
        return sqrtf(v);
    if (g == 3.0f)
        return cbrtf(v);
    if (g == 4.0f)
        return sqrtf(sqrtf(v));
    return expf(logf(v) / g);
}
