
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* multi_heap_handle_t ;
struct TYPE_3__ {int lock; } ;


 int MULTI_HEAP_LOCK (int ) ;

void inline multi_heap_internal_lock(multi_heap_handle_t heap)
{
    MULTI_HEAP_LOCK(heap->lock);
}
