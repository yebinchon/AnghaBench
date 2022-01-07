
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int heap; } ;
typedef TYPE_1__ heap_t ;


 TYPE_1__* find_containing_heap (void*) ;
 size_t multi_heap_get_allocated_size (int ,void*) ;

size_t heap_caps_get_allocated_size( void *ptr )
{
    heap_t *heap = find_containing_heap(ptr);
    size_t size = multi_heap_get_allocated_size(heap->heap, ptr);
    return size;
}
