
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int buffer_size; TYPE_1__* buffers; } ;
typedef TYPE_2__ ccv_nnc_tensor_arena_t ;
struct TYPE_4__ {scalar_t__ size; } ;



uint64_t ccv_nnc_tensor_arena_size(const ccv_nnc_tensor_arena_t* const tensor_arena)
{
 uint64_t total_size = 0;
 int i;
 for (i = 0; i < tensor_arena->buffer_size; i++)
  total_size += tensor_arena->buffers[i].size;
 return total_size;
}
