
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int rows; int cols; int step; TYPE_1__ data; int type; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_GET_CHANNEL (int ) ;
 int CCV_GET_DATA_TYPE_SIZE (int ) ;
 scalar_t__ alloca (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void _ccv_flip_x_self(ccv_dense_matrix_t* a)
{
 int i, j;
 int len = CCV_GET_DATA_TYPE_SIZE(a->type) * CCV_GET_CHANNEL(a->type);
 unsigned char* buffer = (unsigned char*)alloca(len);
 unsigned char* a_ptr = a->data.u8;
 for (i = 0; i < a->rows; i++)
 {
  for (j = 0; j < a->cols / 2; j++)
  {
   memcpy(buffer, a_ptr + j * len, len);
   memcpy(a_ptr + j * len, a_ptr + (a->cols - 1 - j) * len, len);
   memcpy(a_ptr + (a->cols - 1 - j) * len, buffer, len);
  }
  a_ptr += a->step;
 }
}
