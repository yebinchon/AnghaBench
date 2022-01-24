#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sds ;
struct TYPE_5__ {int /*<<< orphan*/  querybuf; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
struct TYPE_6__ {scalar_t__ verbosity; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_CLOSE_AFTER_REPLY ; 
 scalar_t__ LL_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(client *c, int pos) {
    if (server.verbosity <= LL_VERBOSE) {
        sds client = FUNC0(FUNC1(),c);
        FUNC4(LL_VERBOSE,
            "Protocol error from client: %s", client);
        FUNC2(client);
    }
    c->flags |= CLIENT_CLOSE_AFTER_REPLY;
    FUNC3(c->querybuf,pos,-1);
}