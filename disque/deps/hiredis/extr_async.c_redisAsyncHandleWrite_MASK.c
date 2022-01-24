#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; } ;
typedef  TYPE_1__ redisContext ;
struct TYPE_11__ {TYPE_1__ c; } ;
typedef  TYPE_2__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_CONNECTED ; 
 scalar_t__ REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int*) ; 

void FUNC6(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    int done = 0;

    if (!(c->flags & REDIS_CONNECTED)) {
        /* Abort connect was not successful. */
        if (FUNC4(ac) != REDIS_OK)
            return;
        /* Try again later when the context is still not connected. */
        if (!(c->flags & REDIS_CONNECTED))
            return;
    }

    if (FUNC5(c,&done) == REDIS_ERR) {
        FUNC3(ac);
    } else {
        /* Continue writing when not done, stop writing otherwise */
        if (!done)
            FUNC1(ac);
        else
            FUNC2(ac);

        /* Always schedule reads after writes */
        FUNC0(ac);
    }
}