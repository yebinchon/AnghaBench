#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* reader; } ;
typedef  TYPE_1__ redisContext ;
struct TYPE_6__ {int /*<<< orphan*/  errstr; int /*<<< orphan*/  err; } ;

/* Variables and functions */
 scalar_t__ REDIS_ERR ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,void**) ; 

int FUNC2(redisContext *c, void **reply) {
    if (FUNC1(c->reader,reply) == REDIS_ERR) {
        FUNC0(c,c->reader->err,c->reader->errstr);
        return REDIS_ERR;
    }
    return REDIS_OK;
}