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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(unsigned int b, unsigned int b_max,
                           const unsigned int *div_blocks, int32_t *buf)
{
    unsigned int count = 0;

    while (b < b_max)
        count += div_blocks[b++];

    if (count)
        FUNC0(buf, 0, sizeof(*buf) * count);
}