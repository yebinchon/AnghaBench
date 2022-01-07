
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned char* u8; } ;
struct TYPE_6__ {int type; int cols; float rows; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;
typedef int ccv_cubic_integer_coeffs_t ;


 scalar_t__ CCV_32S ;
 scalar_t__ CCV_64S ;
 int CCV_8U ;
 int CCV_GET_CHANNEL (int) ;
 scalar_t__ CCV_GET_DATA_TYPE (int) ;
 int CCV_GET_DATA_TYPE_SIZE (int) ;
 int _ccv_init_cubic_integer_coeffs (int,int,float,int *) ;
 scalar_t__ alloca (int) ;
 int assert (int) ;
 int ccv_matrix_getter (scalar_t__,int ,int,int ,scalar_t__,int ) ;
 int ccv_matrix_setter_getter_integer_only ;
 int ccv_matrix_setter_integer_only ;
 int for_block ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static void _ccv_resample_cubic_integer_only(ccv_dense_matrix_t* a, ccv_dense_matrix_t* b)
{
 assert(CCV_GET_DATA_TYPE(b->type) == CCV_8U || CCV_GET_DATA_TYPE(b->type) == CCV_32S || CCV_GET_DATA_TYPE(b->type) == CCV_64S);
 int i, j, k, ch = CCV_GET_CHANNEL(a->type);
 int no_8u_type = (b->type & CCV_8U) ? CCV_32S : b->type;
 assert(b->cols > 0);
 ccv_cubic_integer_coeffs_t* xofs = (ccv_cubic_integer_coeffs_t*)alloca(sizeof(ccv_cubic_integer_coeffs_t) * b->cols);
 float scale_x = (float)a->cols / b->cols;
 for (i = 0; i < b->cols; i++)
 {
  float sx = (i + 0.5) * scale_x - 0.5;
  _ccv_init_cubic_integer_coeffs((int)sx, a->cols, sx, xofs + i);
 }
 float scale_y = (float)a->rows / b->rows;
 int bufstep = b->cols * ch * CCV_GET_DATA_TYPE_SIZE(no_8u_type);
 unsigned char* buf = (unsigned char*)alloca(bufstep * 4);



 unsigned char* a_ptr = a->data.u8;
 unsigned char* b_ptr = b->data.u8;
 int psi = -1, siy = 0;
 ccv_matrix_getter(a->type, ccv_matrix_setter_getter_integer_only, no_8u_type, ccv_matrix_setter_integer_only, b->type, for_block);

}
