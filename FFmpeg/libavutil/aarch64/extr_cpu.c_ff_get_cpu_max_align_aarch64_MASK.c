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

/* Variables and functions */
 int AV_CPU_FLAG_NEON ; 
 int FUNC0 () ; 

size_t FUNC1(void)
{
    int flags = FUNC0();

    if (flags & AV_CPU_FLAG_NEON)
        return 16;

    return 8;
}