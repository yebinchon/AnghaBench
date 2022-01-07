
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_mser_param_t ;
typedef int ccv_dense_matrix_t ;
typedef int ccv_array_t ;


 int _ccv_set_union_mser (int *,int *,int *,int *,int ) ;

__attribute__((used)) static void _ccv_linear_mser(ccv_dense_matrix_t* a, ccv_dense_matrix_t* h, ccv_dense_matrix_t* b, ccv_array_t* seq, ccv_mser_param_t params)
{
 _ccv_set_union_mser(a, h, b, seq, params);
}
