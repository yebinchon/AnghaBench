#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {int mb_width; } ;
struct TYPE_4__ {scalar_t__* top_borders_allocated; scalar_t__ edge_emu_buffer_allocated; scalar_t__ bipred_scratchpad_allocated; int /*<<< orphan*/ * top_borders; int /*<<< orphan*/  edge_emu_buffer; int /*<<< orphan*/  bipred_scratchpad; TYPE_2__* h264; } ;
typedef  TYPE_1__ H264SliceContext ;
typedef  TYPE_2__ H264Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(H264SliceContext *sl, int linesize)
{
    const H264Context *h = sl->h264;
    int alloc_size = FUNC2(FUNC1(linesize) + 32, 32);

    FUNC3(&sl->bipred_scratchpad, &sl->bipred_scratchpad_allocated, 16 * 6 * alloc_size);
    // edge emu needs blocksize + filter length - 1
    // (= 21x21 for  H.264)
    FUNC3(&sl->edge_emu_buffer, &sl->edge_emu_buffer_allocated, alloc_size * 2 * 21);

    FUNC4(&sl->top_borders[0], &sl->top_borders_allocated[0],
                   h->mb_width * 16 * 3 * sizeof(uint8_t) * 2);
    FUNC4(&sl->top_borders[1], &sl->top_borders_allocated[1],
                   h->mb_width * 16 * 3 * sizeof(uint8_t) * 2);

    if (!sl->bipred_scratchpad || !sl->edge_emu_buffer ||
        !sl->top_borders[0]    || !sl->top_borders[1]) {
        FUNC5(&sl->bipred_scratchpad);
        FUNC5(&sl->edge_emu_buffer);
        FUNC5(&sl->top_borders[0]);
        FUNC5(&sl->top_borders[1]);

        sl->bipred_scratchpad_allocated = 0;
        sl->edge_emu_buffer_allocated   = 0;
        sl->top_borders_allocated[0]    = 0;
        sl->top_borders_allocated[1]    = 0;
        return FUNC0(ENOMEM);
    }

    return 0;
}