
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int16_t ;
struct TYPE_3__ {int ** v; int ** u; } ;
typedef TYPE_1__ XYRemap ;


 int roundf (float) ;

__attribute__((used)) static void nearest_kernel(float du, float dv, const XYRemap *rmap,
                           uint16_t *u, uint16_t *v, int16_t *ker)
{
    const int i = roundf(dv) + 1;
    const int j = roundf(du) + 1;

    u[0] = rmap->u[i][j];
    v[0] = rmap->v[i][j];
}
