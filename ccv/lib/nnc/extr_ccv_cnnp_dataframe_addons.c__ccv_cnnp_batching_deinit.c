
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ccv_nnc_tensor_t ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {TYPE_1__ tuple; } ;
typedef TYPE_2__ ccv_cnnp_batch_context_t ;


 int ccfree (int ** const) ;
 int ccv_nnc_tensor_free (int *) ;

__attribute__((used)) static void _ccv_cnnp_batching_deinit(void* const self, void* const context)
{
 ccv_cnnp_batch_context_t* const batch = (ccv_cnnp_batch_context_t*)context;
 ccv_nnc_tensor_t** const tensors = (ccv_nnc_tensor_t**)self;
 const int size = batch->tuple.size;
 int i;
 for (i = 0; i < size; i++)
  ccv_nnc_tensor_free(tensors[i]);
 ccfree(tensors);
}
