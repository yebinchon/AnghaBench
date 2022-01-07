
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* multi_heap_handle_t ;
struct TYPE_3__ {size_t minimum_free_bytes; } ;



size_t multi_heap_minimum_free_size_impl(multi_heap_handle_t heap)
{
    if (heap == ((void*)0)) {
        return 0;
    }
    return heap->minimum_free_bytes;
}
