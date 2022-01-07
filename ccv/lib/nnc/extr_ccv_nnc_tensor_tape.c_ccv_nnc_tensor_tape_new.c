
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* exec_data; void* tensor_data; } ;
typedef TYPE_1__ ccv_nnc_tensor_tape_t ;
typedef int ccv_nnc_tape_tensor_data_array_t ;
typedef int ccv_nnc_tape_exec_data_array_t ;


 scalar_t__ ccmalloc (int) ;
 void* ccv_array_new (int,int ,int ) ;

ccv_nnc_tensor_tape_t* ccv_nnc_tensor_tape_new(void)
{
 ccv_nnc_tensor_tape_t* tape = (ccv_nnc_tensor_tape_t*)ccmalloc(sizeof(ccv_nnc_tensor_tape_t));
 tape->tensor_data = ccv_array_new(sizeof(ccv_nnc_tape_tensor_data_array_t), 0, 0);
 tape->exec_data = ccv_array_new(sizeof(ccv_nnc_tape_exec_data_array_t), 0, 0);
 return tape;
}
