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
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  enter_drain_mode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  handle_sigterm_pid1 ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5()
{
    struct sigaction sa;

    sa.sa_handler = SIG_IGN;
    sa.sa_flags = 0;
    int r = FUNC3(&sa.sa_mask);
    if (r == -1) {
        FUNC4("sigemptyset()");
        FUNC0(111);
    }

    r = FUNC2(SIGPIPE, &sa, 0);
    if (r == -1) {
        FUNC4("sigaction(SIGPIPE)");
        FUNC0(111);
    }

    sa.sa_handler = enter_drain_mode;
    r = FUNC2(SIGUSR1, &sa, 0);
    if (r == -1) {
        FUNC4("sigaction(SIGUSR1)");
        FUNC0(111);
    }

    // Workaround for running the server with pid=1 in Docker.
    // Handle SIGTERM so the server is killed immediately and
    // not after 10 seconds timeout. See issue #527.
    if (FUNC1() == 1) {
        sa.sa_handler = handle_sigterm_pid1;
        r = FUNC2(SIGTERM, &sa, 0);
        if (r == -1) {
            FUNC4("sigaction(SIGTERM)");
            FUNC0(111);
        }
    }
}