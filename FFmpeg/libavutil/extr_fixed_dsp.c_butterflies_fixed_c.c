
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void butterflies_fixed_c(int *v1, int *v2, int len)
{
    int i;

    for (i = 0; i < len; i++){
        int t = v1[i] - v2[i];
        v1[i] += v2[i];
        v2[i] = t;
    }
}
