#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int flags; } ;
typedef  TYPE_1__ redisContext ;
struct TYPE_10__ {TYPE_1__ c; } ;
typedef  TYPE_2__ redisAsyncContext ;

/* Variables and functions */
 int REDIS_CONNECTED ; 
 scalar_t__ REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);

    if (!(c->flags & REDIS_CONNECTED)) {
        /* Abort connect was not successful. */
        if (FUNC2(ac) != REDIS_OK)
            return;
        /* Try again later when the context is still not connected. */
        if (!(c->flags & REDIS_CONNECTED))
            return;
    }

    if (FUNC3(c) == REDIS_ERR) {
        FUNC1(ac);
    } else {
        /* Always re-schedule reads */
        FUNC0(ac);
        FUNC4(ac);
    }
}