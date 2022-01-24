#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  lag_rac ;
struct TYPE_3__ {int zeros; scalar_t__ zeros_rem; } ;
typedef  TYPE_1__ LagarithContext ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(LagarithContext *l, lag_rac *rac,
                           uint8_t *dst, int width, int stride,
                           int esc_count)
{
    int i = 0;
    int ret = 0;

    if (!esc_count)
        esc_count = -1;

    /* Output any zeros remaining from the previous run */
handle_zeros:
    if (l->zeros_rem) {
        int count = FUNC0(l->zeros_rem, width - i);
        FUNC3(dst + i, 0, count);
        i += count;
        l->zeros_rem -= count;
    }

    while (i < width) {
        dst[i] = FUNC2(rac);
        ret++;

        if (dst[i])
            l->zeros = 0;
        else
            l->zeros++;

        i++;
        if (l->zeros == esc_count) {
            int index = FUNC2(rac);
            ret++;

            l->zeros = 0;

            l->zeros_rem = FUNC1(index);
            goto handle_zeros;
        }
    }
    return ret;
}