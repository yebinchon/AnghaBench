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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  environ ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int) ; 
 int /*<<< orphan*/ * newargv ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void *FUNC11(void *arg)
{
    int count = (int)(intptr_t)arg;
    int i;
    int ret;
    pid_t pid;

    for (i=0; i < count; i++) {
        ret = FUNC9(&pid, newargv[0], NULL, NULL, newargv, environ);
        if (ret != 0) {
            FUNC7(1, ret, "posix_spawn(%s)", newargv[0]);
        }
        
        while (-1 == FUNC10(pid, &ret, 0)) {
            if (errno != EINTR) {
                FUNC6(1, "waitpid(%d)", pid);
            }
        }
        
        if (FUNC2(ret)) {
            FUNC8(1, "process exited with signal %d", FUNC5(ret));
        } else if (FUNC3(ret)) {
            FUNC8(1, "process stopped with signal %d", FUNC4(ret));
        } else if (FUNC1(ret)) {
            if (FUNC0(ret) != 42) {
                FUNC8(1, "process exited with unexpected exit code %d", FUNC0(ret));
            }
        } else {
            FUNC8(1, "unknown exit condition %x", ret);
        }
    }

    return NULL;
}