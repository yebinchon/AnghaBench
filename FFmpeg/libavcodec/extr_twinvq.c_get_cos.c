
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float get_cos(int idx, int part, const float *cos_tab, int size)
{
    return part ? -cos_tab[size - idx - 1]
                : cos_tab[idx];
}
