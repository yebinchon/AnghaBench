
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VG_MAT3X3_T ;


 scalar_t__ EPS ;
 scalar_t__ absf_ (int ) ;
 int vg_mat3x3_affine_det (int const*) ;

bool vg_mat3x3_affine_is_invertible(const VG_MAT3X3_T *a)
{
   return absf_(vg_mat3x3_affine_det(a)) >= EPS;
}
