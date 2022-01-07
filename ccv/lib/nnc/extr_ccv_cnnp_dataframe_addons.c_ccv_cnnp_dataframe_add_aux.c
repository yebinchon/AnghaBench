
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ ccv_nnc_tensor_param_t ;
typedef int ccv_cnnp_dataframe_t ;
typedef int ccv_cnnp_column_data_context_deinit_f ;


 int CCV_STREAM_CONTEXT_GPU ;
 int CCV_STREAM_SET_DEVICE_ID (int,int ) ;
 scalar_t__ CCV_TENSOR_CPU_MEMORY ;
 int CCV_TENSOR_GET_DEVICE_ID (int ) ;
 scalar_t__ CCV_TENSOR_GET_MEMORY (int ) ;
 int _ccv_cnnp_tensor_deinit ;
 int _ccv_cnnp_tensor_new ;
 scalar_t__ ccfree ;
 scalar_t__ ccmalloc (int) ;
 int ccv_cnnp_dataframe_add (int * const,int ,int,int ,TYPE_1__* const,int ) ;

int ccv_cnnp_dataframe_add_aux(ccv_cnnp_dataframe_t* const dataframe, const ccv_nnc_tensor_param_t params)
{
 int stream_type = CCV_TENSOR_GET_MEMORY(params.type) == CCV_TENSOR_CPU_MEMORY ? 0 : CCV_STREAM_CONTEXT_GPU;
 if (stream_type == CCV_STREAM_CONTEXT_GPU)
  CCV_STREAM_SET_DEVICE_ID(stream_type, CCV_TENSOR_GET_DEVICE_ID(params.type));
 ccv_nnc_tensor_param_t* const context = (ccv_nnc_tensor_param_t*)ccmalloc(sizeof(ccv_nnc_tensor_param_t));
 context[0] = params;
 return ccv_cnnp_dataframe_add(dataframe, _ccv_cnnp_tensor_new, stream_type, _ccv_cnnp_tensor_deinit, context, (ccv_cnnp_column_data_context_deinit_f)ccfree);
}
