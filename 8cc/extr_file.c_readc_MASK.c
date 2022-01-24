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
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  files ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5() {
    for (;;) {
        int c = FUNC1();
        if (c == EOF) {
            if (FUNC3(files) == 1)
                return c;
            FUNC0(FUNC4(files));
            continue;
        }
        if (c != '\\')
            return c;
        int c2 = FUNC1();
        if (c2 == '\n')
            continue;
        FUNC2(c2);
        return c;
    }
}