
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_sparse_matrix_t ;
typedef int ccv_matrix_t ;


 int CCV_MATRIX_SPARSE ;

ccv_sparse_matrix_t* ccv_get_sparse_matrix(ccv_matrix_t* mat)
{
 int type = *(int*)mat;
 if (type & CCV_MATRIX_SPARSE)
  return (ccv_sparse_matrix_t*)mat;
 return 0;
}
