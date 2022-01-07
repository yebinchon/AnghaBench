
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double violet_filter(double white, double *buf)
{
    double violet;

    violet = ((0.02 * white) - buf[0]) / 1.02;
    buf[0] = violet;
    return violet * 3.5;
}
