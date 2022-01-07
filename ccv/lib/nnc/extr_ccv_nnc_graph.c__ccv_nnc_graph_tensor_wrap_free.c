
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_nnc_graph_tensor_wrap_t ;


 int ccfree (int * const) ;

__attribute__((used)) static void _ccv_nnc_graph_tensor_wrap_free(ccv_nnc_graph_tensor_wrap_t* const tensor_wrap)
{
 ccfree(tensor_wrap);
}
