
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



bool vg_mat3x3_is_affine(const VG_MAT3X3_T *a)
{
   return (a->m[2][0] == 0.0f) && (a->m[2][1] == 0.0f) && (a->m[2][2] == 1.0f);
}
