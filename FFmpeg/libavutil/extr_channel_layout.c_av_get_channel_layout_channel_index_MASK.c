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
typedef  int uint64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int) ; 

int FUNC2(uint64_t channel_layout,
                                        uint64_t channel)
{
    if (!(channel_layout & channel) ||
        FUNC1(channel) != 1)
        return FUNC0(EINVAL);
    channel_layout &= channel - 1;
    return FUNC1(channel_layout);
}