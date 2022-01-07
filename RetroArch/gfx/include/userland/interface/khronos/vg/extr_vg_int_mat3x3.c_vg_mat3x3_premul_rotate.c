
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VG_MAT3X3_T ;


 int sin_cos_ (float*,float*,float) ;
 int vg_mat3x3_premul_rotate_sc (int *,float,float) ;

void vg_mat3x3_premul_rotate(VG_MAT3X3_T *a, float angle)
{
   float s, c;
   sin_cos_(&s, &c, angle);
   vg_mat3x3_premul_rotate_sc(a, s, c);
}
