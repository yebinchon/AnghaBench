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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int srvpid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(char *a0, char *a1, char *a2, char *a3, char *a4)
{
    srvpid = FUNC2();
    if (srvpid < 0) {
        FUNC4("fork");
        FUNC1(1);
    }

    if (srvpid > 0) {
        FUNC3("%s %s %s %s %s\n", a0, a1, a2, a3, a4);
        FUNC3("start server pid=%d\n", srvpid);
        FUNC5(100000); // .1s; time for the child to bind to its port
        return;
    }

    /* now in child */

    FUNC0(a0, a0, a1, a2, a3, a4, NULL);
}