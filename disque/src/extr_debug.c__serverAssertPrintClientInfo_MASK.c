#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int argc; TYPE_2__** argv; int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ client ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_5__ {int type; int encoding; int /*<<< orphan*/  refcount; scalar_t__ ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LL_WARNING ; 
 int OBJ_STRING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int,int) ; 

void FUNC4(client *c) {
    int j;

    FUNC0();
    FUNC2(LL_WARNING,"=== ASSERTION FAILED CLIENT CONTEXT ===");
    FUNC2(LL_WARNING,"client->flags = %d", c->flags);
    FUNC2(LL_WARNING,"client->fd = %d", c->fd);
    FUNC2(LL_WARNING,"client->argc = %d", c->argc);
    for (j=0; j < c->argc; j++) {
        char buf[128];
        char *arg;

        if (c->argv[j]->type == OBJ_STRING && FUNC1(c->argv[j])) {
            arg = (char*) c->argv[j]->ptr;
        } else {
            FUNC3(buf,sizeof(buf),"Object type: %u, encoding: %u",
                c->argv[j]->type, c->argv[j]->encoding);
            arg = buf;
        }
        FUNC2(LL_WARNING,"client->argv[%d] = \"%s\" (refcount: %d)",
            j, arg, c->argv[j]->refcount);
    }
}