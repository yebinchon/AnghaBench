
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void invert(float *h, int n)
{
    for (int i = 0; i < n; i++)
        h[i] = -h[i];

    h[(n - 1) / 2] += 1;
}
