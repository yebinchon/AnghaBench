
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_swt_param_t ;
typedef int ccv_dense_matrix_t ;


 int _ccv_swt (int *,int **,int,int ,int ,int ,int ) ;

void ccv_swt(ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, int type, ccv_swt_param_t params)
{
 _ccv_swt(a, b, type, params, 0, 0, 0);
}
