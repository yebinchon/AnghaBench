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
typedef  intptr_t uint32_t ;

/* Variables and functions */
 intptr_t FUNC0 (unsigned char const**,int) ; 
 int FUNC1 (intptr_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(const unsigned char* cmd, int len)
{
    intptr_t addr = (intptr_t) FUNC0(&cmd, -1);
    cmd++;
    uint32_t size = FUNC0(&cmd, -1);

    if (FUNC1(addr) < 0 || FUNC1(addr + size - 1) < 0) {
        FUNC5("E01");
        return;
    }

    FUNC4();
    for (int i = 0; i < size; ++i) {
        int b = FUNC1(addr++);
        FUNC3(b, 8);
    }
    FUNC2();
}