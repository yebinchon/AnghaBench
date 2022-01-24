#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* multi_heap_handle_t ;
struct TYPE_11__ {char* next_free; } ;
typedef  TYPE_2__ heap_block_t ;
struct TYPE_10__ {TYPE_2__ first_block; int /*<<< orphan*/  last_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(multi_heap_handle_t heap)
{
    FUNC1(heap != NULL);

    FUNC5(heap);
    FUNC0("Heap start %p end %p\nFirst free block %p\n", &heap->first_block, heap->last_block, heap->first_block.next_free);
    for(heap_block_t *b = &heap->first_block; b != NULL; b = FUNC3(b)) {
        FUNC0("Block %p data size 0x%08x bytes next block %p", b, FUNC2(b), FUNC3(b));
        if (FUNC4(b)) {
            FUNC0(" FREE. Next free %p\n", b->next_free);
        } else {
            FUNC0("%s", "\n"); /* C macros & optional __VA_ARGS__ */
        }
    }
    FUNC6(heap);
}