#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flags; int /*<<< orphan*/  obuf; int /*<<< orphan*/  fd; scalar_t__ err; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 int REDIS_BLOCK ; 
 int REDIS_ERR ; 
 int /*<<< orphan*/  REDIS_ERR_IO ; 
 int REDIS_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC6(redisContext *c, int *done) {
    int nwritten;

    /* Return early when the context has seen an error. */
    if (c->err)
        return REDIS_ERR;

    if (FUNC3(c->obuf) > 0) {
        nwritten = FUNC5(c->fd,c->obuf,FUNC3(c->obuf));
        if (nwritten == -1) {
            if ((errno == EAGAIN && !(c->flags & REDIS_BLOCK)) || (errno == EINTR)) {
                /* Try again later */
            } else {
                FUNC0(c,REDIS_ERR_IO,NULL);
                return REDIS_ERR;
            }
        } else if (nwritten > 0) {
            if (nwritten == (signed)FUNC3(c->obuf)) {
                FUNC2(c->obuf);
                c->obuf = FUNC1();
            } else {
                FUNC4(c->obuf,nwritten,-1);
            }
        }
    }
    if (done != NULL) *done = (FUNC3(c->obuf) == 0);
    return REDIS_OK;
}