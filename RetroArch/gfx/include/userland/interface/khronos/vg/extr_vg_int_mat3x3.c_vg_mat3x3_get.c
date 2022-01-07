
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_get(const VG_MAT3X3_T *a, float *matrix)
{
   matrix[0] = a->m[0][0];
   matrix[3] = a->m[0][1];
   matrix[6] = a->m[0][2];

   matrix[1] = a->m[1][0];
   matrix[4] = a->m[1][1];
   matrix[7] = a->m[1][2];

   matrix[2] = a->m[2][0];
   matrix[5] = a->m[2][1];
   matrix[8] = a->m[2][2];
}
