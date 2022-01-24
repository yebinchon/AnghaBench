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
 int /*<<< orphan*/  done_sem ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void *param)
{
    for (int i = 0; i < 5; i++) {
        if(FUNC0(1)) {
            FUNC3("SHA1 self-tests failed.\n");
            while(1) {}
        }

        if(FUNC1(1)) {
            FUNC3("SHA256 self-tests failed.\n");
            while(1) {}
        }

        if(FUNC2(1)) {
            FUNC3("SHA512 self-tests failed.\n");
            while(1) {}
        }

        if(FUNC2(1)) {
            FUNC3("SHA512 self-tests failed.\n");
            while(1) {}
        }
    }
    FUNC5(done_sem);
    FUNC4(NULL);
}