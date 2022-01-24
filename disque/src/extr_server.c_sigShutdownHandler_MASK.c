#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int shutdown_asap; scalar_t__ loading; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
#define  SIGINT 129 
#define  SIGTERM 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(int sig) {
    char *msg;

    switch (sig) {
    case SIGINT:
        msg = "Received SIGINT scheduling shutdown...";
        break;
    case SIGTERM:
        msg = "Received SIGTERM scheduling shutdown...";
        break;
    default:
        msg = "Received shutdown signal, scheduling shutdown...";
    };

    /* SIGINT is often delivered via Ctrl+C in an interactive session.
     * If we receive the signal the second time, we interpret this as
     * the user really wanting to quit ASAP without waiting to persist
     * on disk. */
    if (server.shutdown_asap && sig == SIGINT) {
        FUNC1(LL_WARNING, "You insist... exiting now.");
        FUNC0(1); /* Exit with an error since this was not a clean shutdown. */
    } else if (server.loading) {
        FUNC0(0);
    }

    FUNC1(LL_WARNING, msg);
    server.shutdown_asap = 1;
}