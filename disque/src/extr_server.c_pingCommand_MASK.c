#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int argc; int /*<<< orphan*/ * argv; TYPE_1__* cmd; } ;
typedef  TYPE_2__ client ;
struct TYPE_10__ {int /*<<< orphan*/  pong; } ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_3__ shared ; 

void FUNC3(client *c) {
    /* The command takes zero or one arguments. */
    if (c->argc > 2) {
        FUNC2(c,"wrong number of arguments for '%s' command",
            c->cmd->name);
        return;
    }

    if (c->argc == 1)
        FUNC0(c,shared.pong);
    else
        FUNC1(c,c->argv[1]);
}