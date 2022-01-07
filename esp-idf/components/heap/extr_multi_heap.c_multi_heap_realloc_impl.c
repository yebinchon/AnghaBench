
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef TYPE_1__* multi_heap_handle_t ;
struct TYPE_26__ {void* data; } ;
typedef TYPE_2__ heap_block_t ;
struct TYPE_25__ {size_t free_bytes; scalar_t__ minimum_free_bytes; } ;


 size_t ALIGN_UP (size_t) ;
 int MULTI_HEAP_ASSERT (int,TYPE_2__*) ;
 int assert (int ) ;
 int assert_valid_block (TYPE_1__*,TYPE_2__*) ;
 size_t block_data_size (TYPE_2__*) ;
 TYPE_2__* get_block (void*) ;
 TYPE_2__* get_next_block (TYPE_2__*) ;
 TYPE_2__* get_prev_free_block (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ is_free (TYPE_2__*) ;
 int memcpy (void*,void*,size_t) ;
 int memmove (void*,void*,size_t) ;
 TYPE_2__* merge_adjacent (TYPE_1__*,TYPE_2__*,TYPE_2__*) ;
 int multi_heap_free_impl (TYPE_1__*,void*) ;
 int multi_heap_internal_lock (TYPE_1__*) ;
 int multi_heap_internal_unlock (TYPE_1__*) ;
 void* multi_heap_malloc_impl (TYPE_1__*,size_t) ;
 int split_if_necessary (TYPE_1__*,TYPE_2__*,size_t,int *) ;

void *multi_heap_realloc_impl(multi_heap_handle_t heap, void *p, size_t size)
{
    heap_block_t *pb = get_block(p);
    void *result;
    size = ALIGN_UP(size);

    assert(heap != ((void*)0));

    if (p == ((void*)0)) {
        return multi_heap_malloc_impl(heap, size);
    }

    assert_valid_block(heap, pb);

    MULTI_HEAP_ASSERT(!is_free(pb), pb);

    if (size == 0) {


        multi_heap_free_impl(heap, p);
        return ((void*)0);
    }

    if (heap == ((void*)0)) {
        return ((void*)0);
    }

    multi_heap_internal_lock(heap);
    result = ((void*)0);

    if (size <= block_data_size(pb)) {

        split_if_necessary(heap, pb, size, ((void*)0));
        result = pb->data;
    }
    else if (heap->free_bytes < size - block_data_size(pb)) {

        multi_heap_internal_unlock(heap);
        return ((void*)0);
    }


    if (result == ((void*)0)) {

        heap_block_t *orig_pb = pb;
        size_t orig_size = block_data_size(orig_pb);
        heap_block_t *next = get_next_block(pb);
        heap_block_t *prev = get_prev_free_block(heap, pb);


        size_t prev_grow_size = (get_next_block(prev) == pb) ? block_data_size(prev) : 0;


        if (is_free(next) && (block_data_size(pb) + block_data_size(next) + prev_grow_size >= size)) {
            pb = merge_adjacent(heap, pb, next);
        }



        if (prev_grow_size > 0 && (block_data_size(pb) + prev_grow_size >= size)) {
            pb = merge_adjacent(heap, prev, pb);


        }

        if (block_data_size(pb) >= size) {
            memmove(pb->data, orig_pb->data, orig_size);
            split_if_necessary(heap, pb, size, ((void*)0));
            result = pb->data;
        }
    }

    if (result == ((void*)0)) {




        result = multi_heap_malloc_impl(heap, size);
        if (result != ((void*)0)) {
            memcpy(result, pb->data, block_data_size(pb));
            multi_heap_free_impl(heap, pb->data);
        }
    }

    if (heap->free_bytes < heap->minimum_free_bytes) {
        heap->minimum_free_bytes = heap->free_bytes;
    }

    multi_heap_internal_unlock(heap);
    return result;
}
