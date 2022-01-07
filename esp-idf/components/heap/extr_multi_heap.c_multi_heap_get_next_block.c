
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* multi_heap_handle_t ;
typedef int * multi_heap_block_handle_t ;
typedef int heap_block_t ;
struct TYPE_4__ {int * last_block; } ;


 int assert_valid_block (TYPE_1__*,int *) ;
 int * get_next_block (int *) ;
 scalar_t__ is_free (int *) ;
 scalar_t__ is_last_block (int *) ;

multi_heap_block_handle_t multi_heap_get_next_block(multi_heap_handle_t heap, multi_heap_block_handle_t block)
{
    heap_block_t *next = get_next_block(block);

    if (next == heap->last_block && is_last_block(next) && is_free(next)) {
        return ((void*)0);
    }
    assert_valid_block(heap, next);
    return next;
}
