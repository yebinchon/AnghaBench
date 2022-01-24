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
 char* DISQUE_VERSION ; 
 char* ZMALLOC_LIB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int,char*,int,unsigned long long) ; 

void FUNC6(void) {
    FUNC5("Disque server v=%s sha=%s:%d malloc=%s bits=%d build=%llx\n",
        DISQUE_VERSION,
        FUNC3(),
        FUNC0(FUNC2()) > 0,
        ZMALLOC_LIB,
        sizeof(long) == 4 ? 32 : 64,
        (unsigned long long) FUNC1());
    FUNC4(0);
}