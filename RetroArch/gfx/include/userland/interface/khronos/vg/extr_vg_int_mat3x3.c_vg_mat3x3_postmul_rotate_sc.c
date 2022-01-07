
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_postmul_rotate_sc(VG_MAT3X3_T *a, float s, float c)
{
   float m00 = a->m[0][0], m10 = a->m[1][0], m20 = a->m[2][0];

   a->m[0][0] = (m00 * c) + (a->m[0][1] * s);
   a->m[0][1] = (a->m[0][1] * c) - (m00 * s);

   a->m[1][0] = (m10 * c) + (a->m[1][1] * s);
   a->m[1][1] = (a->m[1][1] * c) - (m10 * s);

   a->m[2][0] = (m20 * c) + (a->m[2][1] * s);
   a->m[2][1] = (a->m[2][1] * c) - (m20 * s);
}
