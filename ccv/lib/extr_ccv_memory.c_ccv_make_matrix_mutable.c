
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ccv_matrix_t ;
struct TYPE_2__ {int type; scalar_t__ sig; } ;
typedef TYPE_1__ ccv_dense_matrix_t ;


 int CCV_MATRIX_DENSE ;
 int CCV_REUSABLE ;

void ccv_make_matrix_mutable(ccv_matrix_t* mat)
{
 int type = *(int*)mat;
 if (type & CCV_MATRIX_DENSE)
 {
  ccv_dense_matrix_t* dmt = (ccv_dense_matrix_t*)mat;
  dmt->sig = 0;
  dmt->type &= ~CCV_REUSABLE;
 }
}
