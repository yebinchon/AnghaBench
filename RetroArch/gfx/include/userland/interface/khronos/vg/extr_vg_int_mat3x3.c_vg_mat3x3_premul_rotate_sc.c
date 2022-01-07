
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_premul_rotate_sc(VG_MAT3X3_T *a, float s, float c)
{
   float m00 = a->m[0][0], m01 = a->m[0][1], m02 = a->m[0][2];

   a->m[0][0] = (m00 * c) - (a->m[1][0] * s);
   a->m[0][1] = (m01 * c) - (a->m[1][1] * s);
   a->m[0][2] = (m02 * c) - (a->m[1][2] * s);

   a->m[1][0] = (m00 * s) + (a->m[1][0] * c);
   a->m[1][1] = (m01 * s) + (a->m[1][1] * c);
   a->m[1][2] = (m02 * s) + (a->m[1][2] * c);
}
