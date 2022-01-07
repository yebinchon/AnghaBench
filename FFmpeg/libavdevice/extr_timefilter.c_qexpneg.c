
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double qexpneg(double x)
{
    return 1 - 1 / (1 + x * (1 + x / 2 * (1 + x / 3)));
}
