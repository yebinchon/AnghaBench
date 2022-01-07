
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const expf (float const) ;
 float const logf (float const) ;

__attribute__((used)) static float log_scale(const float value, const float min, const float max)
{
    if (value < min)
        return min;
    if (value > max)
        return max;

    {
        const float b = logf(max / min) / (max - min);
        const float a = max / expf(max * b);

        return expf(value * b) * a;
    }
}
