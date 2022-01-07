
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;



void vg_mat3x3_mul(VG_MAT3X3_T *a, const VG_MAT3X3_T *b, const VG_MAT3X3_T *c)
{
   uint32_t j, i;
   for (j = 0; j != 3; ++j) {
      for (i = 0; i != 3; ++i) {
         a->m[j][i] =
            (b->m[j][0] * c->m[0][i]) +
            (b->m[j][1] * c->m[1][i]) +
            (b->m[j][2] * c->m[2][i]);
      }
   }
}
