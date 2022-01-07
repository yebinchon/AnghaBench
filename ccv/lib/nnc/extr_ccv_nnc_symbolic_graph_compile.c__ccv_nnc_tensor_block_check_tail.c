
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* tail; } ;
typedef TYPE_1__ ccv_nnc_tensor_block_t ;
struct TYPE_6__ {int rnum; } ;


 int assert (TYPE_2__*) ;
 scalar_t__ ccv_array_get (TYPE_2__*,int ) ;

__attribute__((used)) static int _ccv_nnc_tensor_block_check_tail(const ccv_nnc_tensor_block_t* const tensor_block, const int tail_node)
{
 assert(tensor_block->tail);
 return (tensor_block->tail->rnum == 1 && *(int*)ccv_array_get(tensor_block->tail, 0) == tail_node);
}
