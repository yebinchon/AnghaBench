
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_matrix_t ;
struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int rows; int cols; int type; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_GET_CHANNEL (int ) ;
 TYPE_2__* ccv_get_dense_matrix (int *) ;
 int ccv_matrix_getter (int ,int ) ;
 int for_block ;

double ccv_variance(ccv_matrix_t* mat)
{
 ccv_dense_matrix_t* dmt = ccv_get_dense_matrix(mat);
 double mean = 0, variance = 0;
 unsigned char* m_ptr = dmt->data.u8;
 int i, j, ch = CCV_GET_CHANNEL(dmt->type);
 ccv_matrix_getter(dmt->type, for_block);

 mean = mean / (dmt->rows * dmt->cols * ch);
 variance = variance / (dmt->rows * dmt->cols * ch);
 return variance - mean * mean;
}
