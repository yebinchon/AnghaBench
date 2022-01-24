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
struct sigaction {int /*<<< orphan*/  sa_handler; int /*<<< orphan*/  sa_mask; scalar_t__ sa_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  exit_process ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4()
{
    struct sigaction sa;

    sa.sa_flags = 0;
    int r = FUNC2(&sa.sa_mask);
    if (r == -1) {
        FUNC3("sigemptyset()");
        FUNC0(111);
    }

    // This is required to trigger gcov on exit. See issue #443.
    sa.sa_handler = exit_process;
    r = FUNC1(SIGTERM, &sa, 0);
    if (r == -1) {
        FUNC3("sigaction(SIGTERM)");
        FUNC0(111);
    }
}