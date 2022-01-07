
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* u8; } ;
struct TYPE_6__ {int cols; int step; float rows; int type; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;
typedef int ccv_cubic_coeffs_t ;


 scalar_t__ CCV_32F ;
 scalar_t__ CCV_64F ;
 int CCV_GET_CHANNEL (int ) ;
 scalar_t__ CCV_GET_DATA_TYPE (int ) ;
 int _ccv_init_cubic_coeffs (int,int,float,int *) ;
 scalar_t__ alloca (int) ;
 int assert (int) ;
 int ccv_matrix_getter (int ,int ,int ,int ) ;
 int ccv_matrix_setter_getter_float_only ;
 int for_block ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void _ccv_resample_cubic_float_only(ccv_dense_matrix_t* a, ccv_dense_matrix_t* b)
{
 assert(CCV_GET_DATA_TYPE(b->type) == CCV_32F || CCV_GET_DATA_TYPE(b->type) == CCV_64F);
 int i, j, k, ch = CCV_GET_CHANNEL(a->type);
 assert(b->cols > 0 && b->step > 0);
 ccv_cubic_coeffs_t* xofs = (ccv_cubic_coeffs_t*)alloca(sizeof(ccv_cubic_coeffs_t) * b->cols);
 float scale_x = (float)a->cols / b->cols;
 for (i = 0; i < b->cols; i++)
 {
  float sx = (i + 0.5) * scale_x - 0.5;
  _ccv_init_cubic_coeffs((int)sx, a->cols, sx, xofs + i);
 }
 float scale_y = (float)a->rows / b->rows;
 unsigned char* buf = (unsigned char*)alloca(b->step * 4);



 unsigned char* a_ptr = a->data.u8;
 unsigned char* b_ptr = b->data.u8;
 int psi = -1, siy = 0;
 ccv_matrix_getter(a->type, ccv_matrix_setter_getter_float_only, b->type, for_block);

}
