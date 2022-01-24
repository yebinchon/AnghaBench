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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 () ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int) ; 

void FUNC5(void)
{
    size_t memcnt=FUNC2();
    size_t memfree=FUNC1();
    FUNC3("Himem has %dKiB of memory, %dKiB of which is free. Testing the free memory...\n", (int)memcnt/1024, (int)memfree/1024);
    FUNC0(FUNC4(memfree, 0xaaaa));
    FUNC3("Done!\n");
}