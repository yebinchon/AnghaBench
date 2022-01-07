
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void sbr_neg_odd_64_c(int *x)
{
    int i;
    for (i = 1; i < 64; i += 2)
        x[i] = -x[i];
}
