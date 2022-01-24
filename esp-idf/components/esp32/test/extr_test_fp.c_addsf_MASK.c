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

__attribute__((used)) static float FUNC0(float a, float b)
{
    float result;
    asm volatile (
        "wfr f0, %1\n"
        "wfr f1, %2\n"
        "add.s f2, f0, f1\n"
        "rfr %0, f2\n"
        :"=r"(result):"r"(a), "r"(b)
    );
    return result;
}