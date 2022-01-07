
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ccv_filter_kernel_f ;
struct TYPE_5__ {unsigned char* u8; } ;
struct TYPE_6__ {int rows; int cols; int type; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_GET_CHANNEL (int ) ;
 int ccv_make_matrix_immutable (TYPE_2__*) ;
 int ccv_matrix_setter (int ,int ) ;
 int for_block ;

void ccv_filter_kernel(ccv_dense_matrix_t* x, ccv_filter_kernel_f func, void* data)
{
 int i, j, k, ch = CCV_GET_CHANNEL(x->type);
 unsigned char* m_ptr = x->data.u8;
 double rows_2 = (x->rows - 1) * 0.5;
 double cols_2 = (x->cols - 1) * 0.5;
 ccv_matrix_setter(x->type, for_block);

 ccv_make_matrix_immutable(x);
}
