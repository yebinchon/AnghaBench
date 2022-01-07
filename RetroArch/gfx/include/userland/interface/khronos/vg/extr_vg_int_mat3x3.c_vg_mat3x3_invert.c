
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;


 float recip_ (int ) ;
 int vcos_assert (int ) ;
 int vg_mat3x3_det (TYPE_1__*) ;
 int vg_mat3x3_is_invertible (TYPE_1__*) ;

void vg_mat3x3_invert(VG_MAT3X3_T *a)
{
   float oo_det;
   VG_MAT3X3_T b;

   vcos_assert(vg_mat3x3_is_invertible(a));

   oo_det = recip_(vg_mat3x3_det(a));

   b.m[0][0] = ((a->m[2][2] * a->m[1][1]) - (a->m[2][1] * a->m[1][2])) * oo_det;
   b.m[0][1] = ((a->m[0][2] * a->m[2][1]) - (a->m[0][1] * a->m[2][2])) * oo_det;
   b.m[0][2] = ((a->m[1][2] * a->m[0][1]) - (a->m[1][1] * a->m[0][2])) * oo_det;

   b.m[1][0] = ((a->m[2][0] * a->m[1][2]) - (a->m[2][2] * a->m[1][0])) * oo_det;
   b.m[1][1] = ((a->m[0][0] * a->m[2][2]) - (a->m[0][2] * a->m[2][0])) * oo_det;
   b.m[1][2] = ((a->m[1][0] * a->m[0][2]) - (a->m[1][2] * a->m[0][0])) * oo_det;

   b.m[2][0] = ((a->m[2][1] * a->m[1][0]) - (a->m[2][0] * a->m[1][1])) * oo_det;
   b.m[2][1] = ((a->m[0][1] * a->m[2][0]) - (a->m[0][0] * a->m[2][1])) * oo_det;
   b.m[2][2] = ((a->m[1][1] * a->m[0][0]) - (a->m[1][0] * a->m[0][1])) * oo_det;

   *a = b;
}
