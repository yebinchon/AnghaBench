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
struct TYPE_3__ {int status; int /*<<< orphan*/  bytes; int /*<<< orphan*/  dur; int /*<<< orphan*/  dir; int /*<<< orphan*/  (* f ) (int) ;} ;
typedef  TYPE_1__ Benchmark ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  TmpDirPat ; 
 int /*<<< orphan*/  bbytes ; 
 int /*<<< orphan*/  bdur ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  curdir ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char) ; 
 int FUNC14 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int FUNC19 () ; 
 int FUNC20 (int,int*,int /*<<< orphan*/ ) ; 
 int FUNC21 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC22(Benchmark *b, int n)
{
    int outfd = FUNC19();
    int durfd = FUNC19();
    FUNC17(b->dir, TmpDirPat);
    if (FUNC11(b->dir) == NULL) {
	FUNC4(1, errno, "mkdtemp");
    }
    FUNC7(NULL);
    int pid = FUNC8();
    if (pid < 0) {
        FUNC4(1, errno, "fork");
    } else if (!pid) {
        FUNC16(0, 0);
        if (FUNC5(outfd, 1) == -1) {
            FUNC4(3, errno, "dup2");
        }
        if (FUNC0(outfd) == -1) {
            FUNC4(3, errno, "fclose");
        }
        if (FUNC5(1, 2) == -1) {
            FUNC4(3, errno, "dup2");
        }
        curdir = b->dir;
        FUNC2();
        b->f(n);
        FUNC3();
        if (FUNC21(durfd, &bdur, sizeof bdur) != sizeof bdur) {
            FUNC4(3, errno, "write");
        }
        if (FUNC21(durfd, &bbytes, sizeof bbytes) != sizeof bbytes) {
            FUNC4(3, errno, "write");
        }
        FUNC6(0);
    }
    FUNC16(pid, pid);

    pid = FUNC20(pid, &b->status, 0);
    if (pid == -1) {
        FUNC4(3, errno, "wait");
    }
    FUNC9(pid, SIGKILL);
    FUNC15(b->dir);
    if (b->status != 0) {
        FUNC13('\n');
        FUNC10(outfd, 0, SEEK_SET);
        FUNC1(stdout, outfd);
        return;
    }

    FUNC10(durfd, 0, SEEK_SET);
    int r = FUNC14(durfd, &b->dur, sizeof b->dur);
    if (r != sizeof b->dur) {
        FUNC12("read");
        b->status = 1;
    }
    r = FUNC14(durfd, &b->bytes, sizeof b->bytes);
    if (r != sizeof b->bytes) {
        FUNC12("read");
        b->status = 1;
    }
}