
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int int64_t ;
typedef unsigned int int32_t ;



__attribute__((used)) static int32_t hdcd_analyze_gen(int32_t sample, unsigned int v, unsigned int maxv)
{
    static const int r = 18, m = 1024;
    int64_t s64 = sample;
    v = m + (v * r * m / maxv);
    return (int32_t)(s64 * v / m);
}
