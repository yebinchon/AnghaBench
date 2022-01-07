
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;


 int vcos_assert (int ) ;
 int vg_mat3x3_is_affine_or_nans (TYPE_1__ const*) ;

float vg_mat3x3_affine_det(const VG_MAT3X3_T *a)
{
   vcos_assert(vg_mat3x3_is_affine_or_nans(a));
   return (a->m[0][0] * a->m[1][1]) - (a->m[1][0] * a->m[0][1]);
}
