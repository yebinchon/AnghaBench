
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int vt_tensor_size; int * pb_vt_tensors; TYPE_1__** vt_tensors; } ;
typedef TYPE_2__ ccv_nnc_tensor_arena_t ;
struct TYPE_4__ {int data; } ;



void ccv_nnc_tensor_arena_clear_bindings(ccv_nnc_tensor_arena_t* const tensor_arena)
{
 if (!tensor_arena->pb_vt_tensors)
  return;
 int i;
 for (i = 0; i < tensor_arena->vt_tensor_size; i++)
  if (tensor_arena->vt_tensors[i])
   tensor_arena->vt_tensors[i]->data = tensor_arena->pb_vt_tensors[i];
}
