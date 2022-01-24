#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ btype; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {int /*<<< orphan*/  nullmultibulk; } ;

/* Variables and functions */
 scalar_t__ BLOCKED_GETJOB ; 
 scalar_t__ BLOCKED_JOB_REPL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__ shared ; 

void FUNC4(client *c) {
    if (c->btype == BLOCKED_JOB_REPL) {
        FUNC1(c,
            FUNC2("-NOREPL Timeout reached before replicating to "
                   "the requested number of nodes\r\n"));
        return;
    } else if (c->btype == BLOCKED_GETJOB) {
        FUNC0(c,shared.nullmultibulk);
    } else {
        FUNC3("Unknown btype in replyToBlockedClientTimedOut().");
    }
}