
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ccv_matrix_t ;
struct TYPE_4__ {int * f64; int * f32; } ;
struct TYPE_5__ {int type; int rows; int cols; TYPE_1__ data; } ;
typedef TYPE_2__ ccv_dense_matrix_t ;


 int CCV_32F ;
 int CCV_64F ;
 int CCV_GET_CHANNEL (int) ;
 int assert (int) ;
 TYPE_2__* ccv_get_dense_matrix (int *) ;
 scalar_t__ isnan (int ) ;
 scalar_t__ isnanf (int ) ;

int ccv_any_nan(ccv_matrix_t *a)
{
 ccv_dense_matrix_t* da = ccv_get_dense_matrix(a);
 assert((da->type & CCV_32F) || (da->type & CCV_64F));
 int ch = CCV_GET_CHANNEL(da->type);
 int i;
 if (da->type & CCV_32F)
 {
  for (i = 0; i < da->rows * da->cols * ch; i++)



   if (isnan(da->data.f32[i]))

    return i + 1;
 } else {
  for (i = 0; i < da->rows * da->cols * ch; i++)
   if (isnan(da->data.f64[i]))
    return i + 1;
 }
 return 0;
}
