
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t end; size_t start; int * heap; } ;
typedef TYPE_1__ heap_t ;


 int ESP_EARLY_LOGD (int ,char*,int *) ;
 size_t HEAP_SIZE_MAX ;
 int TAG ;
 int assert (int) ;
 int * multi_heap_register (void*,size_t) ;

__attribute__((used)) static void register_heap(heap_t *region)
{
    size_t heap_size = region->end - region->start;
    assert(heap_size <= HEAP_SIZE_MAX);
    region->heap = multi_heap_register((void *)region->start, heap_size);
    if (region->heap != ((void*)0)) {
        ESP_EARLY_LOGD(TAG, "New heap initialised at %p", region->heap);
    }
}
