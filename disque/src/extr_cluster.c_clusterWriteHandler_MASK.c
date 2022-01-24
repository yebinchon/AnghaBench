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
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  sndbuf; } ;
typedef  TYPE_1__ clusterLink ;
typedef  int /*<<< orphan*/  aeEventLoop ;
struct TYPE_5__ {int /*<<< orphan*/  el; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_WRITABLE ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC8(aeEventLoop *el, int fd, void *privdata, int mask) {
    clusterLink *link = (clusterLink*) privdata;
    ssize_t nwritten;
    FUNC0(*el);
    FUNC0(mask);

    nwritten = FUNC7(fd, link->sndbuf, FUNC3(link->sndbuf));
    if (nwritten <= 0) {
        FUNC5(LL_DEBUG,"I/O error writing to node link: %s",
            FUNC6(errno));
        FUNC2(link);
        return;
    }
    FUNC4(link->sndbuf,nwritten,-1);
    if (FUNC3(link->sndbuf) == 0)
        FUNC1(server.el, link->fd, AE_WRITABLE);
}