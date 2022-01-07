
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* multi_heap_handle_t ;
struct TYPE_6__ {intptr_t header; TYPE_4__* next_free; } ;
struct TYPE_7__ {size_t free_bytes; size_t minimum_free_bytes; TYPE_1__ first_block; TYPE_4__* last_block; int * lock; } ;
typedef TYPE_2__ heap_t ;
struct TYPE_8__ {intptr_t header; struct TYPE_8__* next_free; } ;
typedef TYPE_4__ heap_block_t ;


 uintptr_t ALIGN (uintptr_t) ;
 uintptr_t ALIGN_UP (uintptr_t) ;
 intptr_t BLOCK_FREE_FLAG ;

multi_heap_handle_t multi_heap_register_impl(void *start_ptr, size_t size)
{
    uintptr_t start = ALIGN_UP((uintptr_t)start_ptr);
    uintptr_t end = ALIGN((uintptr_t)start_ptr + size);
    heap_t *heap = (heap_t *)start;
    size = end - start;

    if (end < start || size < sizeof(heap_t) + 2*sizeof(heap_block_t)) {
        return ((void*)0);
    }
    heap->lock = ((void*)0);
    heap->last_block = (heap_block_t *)(end - sizeof(heap_block_t));


    heap_block_t *first_free_block = (heap_block_t *)(start + sizeof(heap_t));
    first_free_block->header = (intptr_t)heap->last_block | BLOCK_FREE_FLAG;
    first_free_block->next_free = heap->last_block;


    heap->last_block->header = BLOCK_FREE_FLAG;
    heap->last_block->next_free = ((void*)0);



    heap->first_block.header = (intptr_t)first_free_block | BLOCK_FREE_FLAG;
    heap->first_block.next_free = first_free_block;







    heap->free_bytes = size - sizeof(heap_t) - sizeof(first_free_block->header) - sizeof(heap_block_t);
    heap->minimum_free_bytes = heap->free_bytes;

    return heap;
}
