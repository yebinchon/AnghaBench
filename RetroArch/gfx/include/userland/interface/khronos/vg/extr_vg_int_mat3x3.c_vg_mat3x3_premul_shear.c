
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_premul_shear(VG_MAT3X3_T *a, float x, float y)
{
   float m00 = a->m[0][0], m01 = a->m[0][1], m02 = a->m[0][2];

   a->m[0][0] += a->m[1][0] * x;
   a->m[0][1] += a->m[1][1] * x;
   a->m[0][2] += a->m[1][2] * x;

   a->m[1][0] += m00 * y;
   a->m[1][1] += m01 * y;
   a->m[1][2] += m02 * y;
}
