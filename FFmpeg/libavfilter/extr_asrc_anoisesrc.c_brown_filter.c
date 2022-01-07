
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double brown_filter(double white, double *buf)
{
    double brown;

    brown = ((0.02 * white) + buf[0]) / 1.02;
    buf[0] = brown;
    return brown * 3.5;
}
