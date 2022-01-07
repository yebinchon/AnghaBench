
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_affine_transform_t(const VG_MAT3X3_T *a, float *x_io, float *y_io)
{
   float x = (a->m[0][0] * *x_io) + (a->m[0][1] * *y_io);
   float y = (a->m[1][0] * *x_io) + (a->m[1][1] * *y_io);
   *x_io = x;
   *y_io = y;
}
