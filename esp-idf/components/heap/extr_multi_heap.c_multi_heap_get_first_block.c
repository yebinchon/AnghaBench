
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* multi_heap_handle_t ;
typedef int * multi_heap_block_handle_t ;
struct TYPE_3__ {int first_block; } ;



multi_heap_block_handle_t multi_heap_get_first_block(multi_heap_handle_t heap)
{
    return &heap->first_block;
}
