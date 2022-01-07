
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int buffer_size; TYPE_1__* buffers; } ;
typedef TYPE_2__ ccv_nnc_tensor_arena_t ;
struct TYPE_5__ {int type; int ptr; scalar_t__ pin_mem; } ;


 int const CCV_TENSOR_CPU_MEMORY ;
 int CCV_TENSOR_GET_DEVICE_ID (int const) ;
 int CCV_TENSOR_GET_MEMORY (int const) ;
 int const CCV_TENSOR_GPU_MEMORY ;
 int _ccv_nnc_tensor_arena_free (TYPE_2__* const) ;
 int assert (int) ;
 int ccfree (int ) ;
 int cufree (int const,int ) ;
 int cuhostfree (int ) ;

void ccv_nnc_tensor_arena_free(ccv_nnc_tensor_arena_t* const tensor_arena)
{
 int i;
 for (i = 0; i < tensor_arena->buffer_size; i++)
 {
  const int buffer_type = tensor_arena->buffers[i].type;;
  const int memory_type = CCV_TENSOR_GET_MEMORY(buffer_type);
  assert(memory_type == CCV_TENSOR_CPU_MEMORY);
  ccfree(tensor_arena->buffers[i].ptr);

 }
 _ccv_nnc_tensor_arena_free(tensor_arena);
}
