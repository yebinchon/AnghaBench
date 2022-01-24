#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int flags; } ;
typedef  TYPE_2__ redisContext ;
typedef  int /*<<< orphan*/  redisCallback ;
struct TYPE_10__ {int /*<<< orphan*/  patterns; int /*<<< orphan*/  channels; int /*<<< orphan*/  invalid; } ;
struct TYPE_12__ {scalar_t__ err; int /*<<< orphan*/  (* onDisconnect ) (TYPE_3__*,scalar_t__) ;TYPE_1__ sub; int /*<<< orphan*/  replies; TYPE_2__ c; } ;
typedef  TYPE_3__ redisAsyncContext ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;

/* Variables and functions */
 int REDIS_CONNECTED ; 
 scalar_t__ REDIS_ERR ; 
 int REDIS_FREEING ; 
 scalar_t__ REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(redisAsyncContext *ac) {
    redisContext *c = &(ac->c);
    redisCallback cb;
    dictIterator *it;
    dictEntry *de;

    /* Execute pending callbacks with NULL reply. */
    while (FUNC2(&ac->replies,&cb) == REDIS_OK)
        FUNC1(ac,&cb,NULL);

    /* Execute callbacks for invalid commands */
    while (FUNC2(&ac->sub.invalid,&cb) == REDIS_OK)
        FUNC1(ac,&cb,NULL);

    /* Run subscription callbacks callbacks with NULL reply */
    it = FUNC4(ac->sub.channels);
    while ((de = FUNC5(it)) != NULL)
        FUNC1(ac,FUNC3(de),NULL);
    FUNC7(it);
    FUNC6(ac->sub.channels);

    it = FUNC4(ac->sub.patterns);
    while ((de = FUNC5(it)) != NULL)
        FUNC1(ac,FUNC3(de),NULL);
    FUNC7(it);
    FUNC6(ac->sub.patterns);

    /* Signal event lib to clean up */
    FUNC0(ac);

    /* Execute disconnect callback. When redisAsyncFree() initiated destroying
     * this context, the status will always be REDIS_OK. */
    if (ac->onDisconnect && (c->flags & REDIS_CONNECTED)) {
        if (c->flags & REDIS_FREEING) {
            ac->onDisconnect(ac,REDIS_OK);
        } else {
            ac->onDisconnect(ac,(ac->err == 0) ? REDIS_OK : REDIS_ERR);
        }
    }

    /* Cleanup self */
    FUNC8(c);
}