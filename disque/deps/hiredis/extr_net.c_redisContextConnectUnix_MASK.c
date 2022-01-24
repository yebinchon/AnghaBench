#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct sockaddr_un {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_6__ {int flags; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ redisContext ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 scalar_t__ EINPROGRESS ; 
 int REDIS_BLOCK ; 
 int REDIS_CONNECTED ; 
 int REDIS_ERR ; 
 scalar_t__ REDIS_OK ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct timeval const*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int) ; 

int FUNC5(redisContext *c, const char *path, const struct timeval *timeout) {
    int blocking = (c->flags & REDIS_BLOCK);
    struct sockaddr_un sa;

    if (FUNC2(c,AF_LOCAL) < 0)
        return REDIS_ERR;
    if (FUNC3(c,0) != REDIS_OK)
        return REDIS_ERR;

    sa.sun_family = AF_LOCAL;
    FUNC4(sa.sun_path,path,sizeof(sa.sun_path)-1);
    if (FUNC0(c->fd, (struct sockaddr*)&sa, sizeof(sa)) == -1) {
        if (errno == EINPROGRESS && !blocking) {
            /* This is ok. */
        } else {
            if (FUNC1(c,timeout) != REDIS_OK)
                return REDIS_ERR;
        }
    }

    /* Reset socket to be blocking after connect(2). */
    if (blocking && FUNC3(c,1) != REDIS_OK)
        return REDIS_ERR;

    c->flags |= REDIS_CONNECTED;
    return REDIS_OK;
}