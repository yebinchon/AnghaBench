
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* compiled_data; } ;
typedef TYPE_1__ ccv_cnnp_model_t ;
struct TYPE_5__ {int tensor_arena; } ;
typedef TYPE_2__ ccv_cnnp_compiled_data_t ;


 int ccv_nnc_tensor_arena_size (int ) ;

uint64_t ccv_cnnp_model_memory_size(const ccv_cnnp_model_t* const model)
{
 const ccv_cnnp_compiled_data_t* const compiled_data = model->compiled_data;
 if (!compiled_data || !compiled_data->tensor_arena)
  return 0;
 return ccv_nnc_tensor_arena_size(compiled_data->tensor_arena);
}
