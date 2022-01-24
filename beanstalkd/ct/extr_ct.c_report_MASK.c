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
struct TYPE_3__ {char* name; int /*<<< orphan*/  fd; int /*<<< orphan*/  status; int /*<<< orphan*/  dir; scalar_t__ f; } ;
typedef  TYPE_1__ Test ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC10(Test *t)
{
    int nfail = 0, nerr = 0;

    FUNC8('\n');
    for (; t->f; t++) {
        FUNC9(t->dir);
        if (!t->status) {
            continue;
        }

        FUNC7("\n%s: ", t->name);
        if (FUNC5(t->status)) {
            nfail++;
            FUNC7("failure");
        } else {
            nerr++;
            FUNC7("error");
            if (FUNC1(t->status)) {
                FUNC7(" (exit status %d)", FUNC0(t->status));
            }
            if (FUNC2(t->status)) {
                FUNC7(" (signal %d)", FUNC3(t->status));
            }
        }

        FUNC8('\n');
        FUNC6(t->fd, 0, SEEK_SET);
        FUNC4(stdout, t->fd);
    }

    if (nfail || nerr) {
        FUNC7("\n%d failures; %d errors.\n", nfail, nerr);
    } else {
        FUNC7("\nPASS\n");
    }
    return nfail || nerr;
}