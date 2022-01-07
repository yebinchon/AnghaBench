
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tensor_view; scalar_t__ destinations; scalar_t__ sources; int index; } ;
typedef TYPE_1__ ccv_nnc_tensor_variable_graph_bind_t ;
typedef int ccv_nnc_tensor_t ;


 scalar_t__ CCV_IS_TENSOR_VIEW (scalar_t__) ;
 int CCV_NNC_IS_EXTERN_TENSOR_VIEW (scalar_t__) ;
 int CCV_NNC_TENSOR_NO_VARIABLE ;
 int ccv_array_free (scalar_t__) ;
 int ccv_nnc_tensor_free (int *) ;
 int ccv_nnc_tensor_view_free (scalar_t__) ;

__attribute__((used)) static void _ccv_nnc_tensor_variable_graph_bind_free(ccv_nnc_tensor_variable_graph_bind_t* const bind, const int zeroing)
{
 bind->index = CCV_NNC_TENSOR_NO_VARIABLE;
 if (bind->sources)
  ccv_array_free(bind->sources);
 if (bind->destinations)
  ccv_array_free(bind->destinations);
 if (bind->tensor_view && !CCV_NNC_IS_EXTERN_TENSOR_VIEW(bind->tensor_view))
 {
  if (CCV_IS_TENSOR_VIEW(bind->tensor_view))
   ccv_nnc_tensor_view_free(bind->tensor_view);
  else
   ccv_nnc_tensor_free((ccv_nnc_tensor_t*)bind->tensor_view);
 }
 if (zeroing)
 {
  bind->sources = 0;
  bind->destinations = 0;
  bind->tensor_view = 0;
 }
}
