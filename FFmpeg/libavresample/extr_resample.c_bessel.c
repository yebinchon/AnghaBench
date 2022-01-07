
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double bessel(double x)
{
    double v = 1;
    double lastv = 0;
    double t = 1;
    int i;

    x = x * x / 4;
    for (i = 1; v != lastv; i++) {
        lastv = v;
        t *= x / (i * i);
        v += t;
    }
    return v;
}
