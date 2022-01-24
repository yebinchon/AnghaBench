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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static uint32_t FUNC1(void)
{
    uint32_t t0 = FUNC0() & 0x3ff,
             t1 = FUNC0() & 0x3ff,
             t2 = FUNC0() & 0x3ff;
    uint32_t value =  t0
                   | (t1 << 10)
                   | (t2 << 20);
    return value;
}