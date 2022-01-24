#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  redisReply ;
struct TYPE_7__ {int err; char* errstr; } ;
typedef  TYPE_1__ redisContext ;
struct TYPE_8__ {int /*<<< orphan*/  hostport; int /*<<< orphan*/  hostip; } ;

/* Variables and functions */
 int REDIS_ERR_EOF ; 
 int REDIS_ERR_IO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_6__ config ; 
 TYPE_1__* context ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static redisReply *FUNC9(void) {
    redisContext *c = context;
    redisReply *reply = NULL;
    int tries = 0;

    FUNC0(!c->err);
    while(reply == NULL) {
        while (c->err & (REDIS_ERR_IO | REDIS_ERR_EOF)) {
            FUNC4("Reconnecting (%d)...\r", ++tries);
            FUNC2(stdout);

            FUNC7(c);
            c = FUNC6(config.hostip,config.hostport);
            FUNC8(1000000);
        }

        reply = FUNC5(c,"INFO");
        if (c->err && !(c->err & (REDIS_ERR_IO | REDIS_ERR_EOF))) {
            FUNC3(stderr, "Error: %s\n", c->errstr);
            FUNC1(1);
        } else if (tries > 0) {
            FUNC4("\n");
        }
    }

    context = c;
    return reply;
}