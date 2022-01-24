#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pid; int status; scalar_t__ f; } ;
typedef  TYPE_1__ Test ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(Test *ts)
{
    Test *t;
    int pid, stat;

    pid = FUNC5(&stat, 0, 0);
    if (pid == -1) {
        FUNC0(3, errno, "wait");
    }
    FUNC3(pid, SIGKILL);

    for (t=ts; t->f; t++) {
        if (t->pid == pid) {
            t->status = stat;
            if (!t->status) {
                FUNC4('.');
            } else if (FUNC1(t->status)) {
                FUNC4('F');
            } else {
                FUNC4('E');
            }
            FUNC2(stdout);
        }
    }
}