#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ total_free_bytes; size_t largest_free_block; size_t total_allocated_bytes; int /*<<< orphan*/  minimum_free_bytes; int /*<<< orphan*/  allocated_blocks; int /*<<< orphan*/  free_blocks; int /*<<< orphan*/  total_blocks; } ;
typedef  TYPE_1__ multi_heap_info_t ;
typedef  TYPE_2__* multi_heap_handle_t ;
typedef  int /*<<< orphan*/  heap_block_t ;
struct TYPE_10__ {scalar_t__ free_bytes; int /*<<< orphan*/  minimum_free_bytes; int /*<<< orphan*/  first_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(multi_heap_handle_t heap, multi_heap_info_t *info)
{
    FUNC5(info, 0, sizeof(multi_heap_info_t));

    if (heap == NULL) {
        return;
    }

    FUNC6(heap);
    for(heap_block_t *b = FUNC2(&heap->first_block); !FUNC4(b); b = FUNC2(b)) {
        info->total_blocks++;
        if (FUNC3(b)) {
            size_t s = FUNC1(b);
            info->total_free_bytes += s;
            if (s > info->largest_free_block) {
                info->largest_free_block = s;
            }
            info->free_blocks++;
        } else {
            info->total_allocated_bytes += FUNC1(b);
            info->allocated_blocks++;
        }
    }

    info->minimum_free_bytes = heap->minimum_free_bytes;
    // heap has wrong total size (address printed here is not indicative of the real error)
    FUNC0(info->total_free_bytes == heap->free_bytes, heap);

    FUNC7(heap);

}