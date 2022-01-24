#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__,size_t) ; 

__attribute__((used)) static void FUNC3(uint8_t *dst, size_t dst_size, uint8_t *clear,
                         size_t clear_size)
{
    int same = 1;
    int i;

    if (!clear_size)
        return;

    // Reduce to memset() if possible.
    for (i = 0; i < clear_size; i++) {
        if (clear[i] != clear[0]) {
            same = 0;
            break;
        }
    }
    if (same)
        clear_size = 1;

    if (clear_size == 1) {
        FUNC2(dst, clear[0], dst_size);
    } else {
        if (clear_size > dst_size)
            clear_size = dst_size;
        FUNC1(dst, clear, clear_size);
        FUNC0(dst + clear_size, clear_size, dst_size - clear_size);
    }
}