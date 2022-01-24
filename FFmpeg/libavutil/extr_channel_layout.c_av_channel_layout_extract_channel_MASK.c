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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int FUNC0 (unsigned long long) ; 

uint64_t FUNC1(uint64_t channel_layout, int index)
{
    int i;

    if (FUNC0(channel_layout) <= index)
        return 0;

    for (i = 0; i < 64; i++) {
        if ((1ULL << i) & channel_layout && !index--)
            return 1ULL << i;
    }
    return 0;
}