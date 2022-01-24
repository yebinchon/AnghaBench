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
 scalar_t__ ARCH_AARCH64 ; 
 scalar_t__ ARCH_ARM ; 
 scalar_t__ ARCH_PPC ; 
 scalar_t__ ARCH_X86 ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(void)
{
    if (ARCH_AARCH64)
        return FUNC0();
    if (ARCH_ARM)
        return FUNC1();
    if (ARCH_PPC)
        return FUNC2();
    if (ARCH_X86)
        return FUNC3();
    return 0;
}