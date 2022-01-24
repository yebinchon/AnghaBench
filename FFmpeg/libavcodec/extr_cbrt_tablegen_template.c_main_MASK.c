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
typedef  int /*<<< orphan*/  AAC_RENAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_cbrt_tab ; 
 int /*<<< orphan*/  ff_cbrt_tab_fixed ; 
 int /*<<< orphan*/  uint32_t ; 
 int /*<<< orphan*/  FUNC1 () ; 

int FUNC2(void)
{
    AAC_RENAME(FUNC3)();

    FUNC1();

#if USE_FIXED
    WRITE_ARRAY("const", uint32_t, ff_cbrt_tab_fixed);
#else
    FUNC0("const", uint32_t, ff_cbrt_tab);
#endif

    return 0;
}