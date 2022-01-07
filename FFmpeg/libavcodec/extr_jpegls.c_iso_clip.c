
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int iso_clip(int v, int vmin, int vmax)
{
    if (v > vmax || v < vmin)
        return vmin;
    else
        return v;
}
