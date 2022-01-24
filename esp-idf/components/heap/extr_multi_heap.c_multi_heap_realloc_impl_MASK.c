#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* multi_heap_handle_t ;
struct TYPE_26__ {void* data; } ;
typedef  TYPE_2__ heap_block_t ;
struct TYPE_25__ {size_t free_bytes; scalar_t__ minimum_free_bytes; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 size_t FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (void*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (void*,void*,size_t) ; 
 TYPE_2__* FUNC11 (TYPE_1__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 void* FUNC15 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*,size_t,int /*<<< orphan*/ *) ; 

void *FUNC17(multi_heap_handle_t heap, void *p, size_t size)
{
    heap_block_t *pb = FUNC5(p);
    void *result;
    size = FUNC0(size);

    FUNC2(heap != NULL);

    if (p == NULL) {
        return FUNC15(heap, size);
    }

    FUNC3(heap, pb);
    // non-null realloc arg should be allocated
    FUNC1(!FUNC8(pb), pb);

    if (size == 0) {
        /* note: calling multi_free_impl() here as we've already been
           through any poison-unwrapping */
        FUNC12(heap, p);
        return NULL;
    }

    if (heap == NULL) {
        return NULL;
    }

    FUNC13(heap);
    result = NULL;

    if (size <= FUNC4(pb)) {
        // Shrinking....
        FUNC16(heap, pb, size, NULL);
        result = pb->data;
    }
    else if (heap->free_bytes < size - FUNC4(pb)) {
        // Growing, but there's not enough total free space in the heap
        FUNC14(heap);
        return NULL;
    }

    // New size is larger than existing block
    if (result == NULL) {
        // See if we can grow into one or both adjacent blocks
        heap_block_t *orig_pb = pb;
        size_t orig_size = FUNC4(orig_pb);
        heap_block_t *next = FUNC6(pb);
        heap_block_t *prev = FUNC7(heap, pb);

        // Can only grow into the previous free block if it's adjacent
        size_t prev_grow_size = (FUNC6(prev) == pb) ? FUNC4(prev) : 0;

        // Can grow into next block? (we may also need to grow into 'prev' to get to our desired size)
        if (FUNC8(next) && (FUNC4(pb) + FUNC4(next) + prev_grow_size >= size)) {
            pb = FUNC11(heap, pb, next);
        }

        // Can grow into previous block?
        // (try this even if we're already big enough from growing into 'next', as it reduces fragmentation)
        if (prev_grow_size > 0 && (FUNC4(pb) + prev_grow_size >= size)) {
            pb = FUNC11(heap, prev, pb);
            // this doesn't guarantee we'll be left with a big enough block, as it's
            // possible for the merge to fail if prev == heap->first_block
        }

        if (FUNC4(pb) >= size) {
            FUNC10(pb->data, orig_pb->data, orig_size);
            FUNC16(heap, pb, size, NULL);
            result = pb->data;
        }
    }

    if (result == NULL) {
        // Need to allocate elsewhere and copy data over
        //
        // (Calling _impl versions here as we've already been through any
        // unwrapping for heap poisoning features.)
        result = FUNC15(heap, size);
        if (result != NULL) {
            FUNC9(result, pb->data, FUNC4(pb));
            FUNC12(heap, pb->data);
        }
    }

    if (heap->free_bytes < heap->minimum_free_bytes) {
        heap->minimum_free_bytes = heap->free_bytes;
    }

    FUNC14(heap);
    return result;
}