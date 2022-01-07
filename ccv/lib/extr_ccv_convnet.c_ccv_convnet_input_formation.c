
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {float height; float width; } ;
typedef TYPE_1__ ccv_size_t ;
typedef int ccv_matrix_t ;
struct TYPE_10__ {float rows; float cols; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_32F ;
 int CCV_INTER_AREA ;
 int CCV_INTER_CUBIC ;
 int ccv_max (float,int) ;
 int ccv_resample (TYPE_2__*,TYPE_2__**,int ,int ,int ,int ) ;
 int ccv_shift (TYPE_2__*,int **,int ,int ,int ) ;

void ccv_convnet_input_formation(ccv_size_t input, ccv_dense_matrix_t* a, ccv_dense_matrix_t** b)
{
 if (a->rows > input.height && a->cols > input.width)
  ccv_resample(a, b, CCV_32F, ccv_max(input.height, (int)(a->rows * (float)input.height / a->cols + 0.5)), ccv_max(input.width, (int)(a->cols * (float)input.width / a->rows + 0.5)), CCV_INTER_AREA);
 else if (a->rows < input.height || a->cols < input.width)
  ccv_resample(a, b, CCV_32F, ccv_max(input.height, (int)(a->rows * (float)input.height / a->cols + 0.5)), ccv_max(input.width, (int)(a->cols * (float)input.width / a->rows + 0.5)), CCV_INTER_CUBIC);
 else
  ccv_shift(a, (ccv_matrix_t**)b, CCV_32F, 0, 0);
}
