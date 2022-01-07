
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_postmul_shear(VG_MAT3X3_T *a, float x, float y)
{
   float m00 = a->m[0][0], m10 = a->m[1][0], m20 = a->m[2][0];

   a->m[0][0] += a->m[0][1] * y;
   a->m[0][1] += m00 * x;

   a->m[1][0] += a->m[1][1] * y;
   a->m[1][1] += m10 * x;

   a->m[2][0] += a->m[2][1] * y;
   a->m[2][1] += m20 * x;
}
