#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* hostsocket; char* hostip; int hostport; } ;
struct TYPE_6__ {char* errstr; int /*<<< orphan*/  fd; scalar_t__ err; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISQUE_CLI_KEEPALIVE_INTERVAL ; 
 int REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_5__ config ; 
 TYPE_1__* context ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC4 (char*,int) ; 
 TYPE_1__* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(int force) {
    if (context == NULL || force) {
        if (context != NULL)
            FUNC6(context);

        if (config.hostsocket == NULL) {
            context = FUNC4(config.hostip,config.hostport);
        } else {
            context = FUNC5(config.hostsocket);
        }

        if (context->err) {
            FUNC3(stderr,"Could not connect to Disque at ");
            if (config.hostsocket == NULL)
                FUNC3(stderr,"%s:%d: %s\n",config.hostip,config.hostport,context->errstr);
            else
                FUNC3(stderr,"%s: %s\n",config.hostsocket,context->errstr);
            FUNC6(context);
            context = NULL;
            return REDIS_ERR;
        }

        /* Set aggressive KEEP_ALIVE socket option in the Disque context socket
         * in order to prevent timeouts caused by the execution of long
         * commands. At the same time this improves the detection of real
         * errors. */
        FUNC0(NULL, context->fd, DISQUE_CLI_KEEPALIVE_INTERVAL);

        /* Do AUTH and select the right DB. */
        if (FUNC1() != REDIS_OK)
            return REDIS_ERR;
        if (FUNC2() != REDIS_OK)
            return REDIS_ERR;
    }
    return REDIS_OK;
}