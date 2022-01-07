
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ivi_scale_mv(int mv, int mv_scale)
{
    return (mv + (mv > 0) + (mv_scale - 1)) >> mv_scale;
}
