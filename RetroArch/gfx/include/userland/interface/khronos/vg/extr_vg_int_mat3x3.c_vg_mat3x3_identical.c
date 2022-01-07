
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ** m; } ;
typedef TYPE_1__ VG_MAT3X3_T ;


 scalar_t__ floats_identical (int ,int ) ;

bool vg_mat3x3_identical(const VG_MAT3X3_T *a, const VG_MAT3X3_T *b)
{
   return floats_identical(a->m[0][0], b->m[0][0]) && floats_identical(a->m[0][1], b->m[0][1]) && floats_identical(a->m[0][2], b->m[0][2]) &&
          floats_identical(a->m[1][0], b->m[1][0]) && floats_identical(a->m[1][1], b->m[1][1]) && floats_identical(a->m[1][2], b->m[1][2]) &&
          floats_identical(a->m[2][0], b->m[2][0]) && floats_identical(a->m[2][1], b->m[2][1]) && floats_identical(a->m[2][2], b->m[2][2]);
}
