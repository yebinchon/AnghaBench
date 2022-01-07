
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int step; int rows; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 scalar_t__ alloca (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void _ccv_flip_y_self(ccv_dense_matrix_t* a)
{
 int i;
 unsigned char* buffer = (unsigned char*)alloca(a->step);
 unsigned char* a_ptr = a->data.u8;
 unsigned char* b_ptr = a->data.u8 + (a->rows - 1) * a->step;
 for (i = 0; i < a->rows / 2; i++)
 {
  memcpy(buffer, a_ptr, a->step);
  memcpy(a_ptr, b_ptr, a->step);
  memcpy(b_ptr, buffer, a->step);
  a_ptr += a->step;
  b_ptr -= a->step;
 }
}
