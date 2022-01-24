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
struct TYPE_3__ {int fd; scalar_t__ pid; int /*<<< orphan*/  (* f ) () ;int /*<<< orphan*/  dir; } ;
typedef  TYPE_1__ Test ;

/* Variables and functions */
 int /*<<< orphan*/  TmpDirPat ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  curdir ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ fail ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 

__attribute__((used)) static void
FUNC12(Test *t)
{
    t->fd = FUNC11();
    FUNC9(t->dir, TmpDirPat);
    if (FUNC7(t->dir) == NULL) {
	FUNC2(1, errno, "mkdtemp");
    }
    FUNC5(NULL);
    t->pid = FUNC6();
    if (t->pid < 0) {
        FUNC2(1, errno, "fork");
    } else if (!t->pid) {
        FUNC8(0, 0);
        if (FUNC3(t->fd, 1) == -1) {
            FUNC2(3, errno, "dup2");
        }
        if (FUNC0(t->fd) == -1) {
            FUNC2(3, errno, "fclose");
        }
        if (FUNC3(1, 2) == -1) {
            FUNC2(3, errno, "dup2");
        }
        curdir = t->dir;
        t->f();
        if (fail) {
            FUNC1();
        }
        FUNC4(0);
    }
    FUNC8(t->pid, t->pid);
}