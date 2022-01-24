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
struct TYPE_5__ {int fd; } ;
typedef  TYPE_1__ clusterLink ;
typedef  int /*<<< orphan*/  cip ;
typedef  void aeEventLoop ;
struct TYPE_6__ {int /*<<< orphan*/  el; int /*<<< orphan*/  neterr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int ANET_ERR ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int MAX_CLUSTER_ACCEPTS_PER_CALL ; 
 int NET_IP_STR_LEN ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*,int,int*) ; 
 int /*<<< orphan*/  clusterReadHandler ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*,...) ; 

void FUNC7(aeEventLoop *el, int fd, void *privdata, int mask) {
    int cport, cfd;
    int max = MAX_CLUSTER_ACCEPTS_PER_CALL;
    char cip[NET_IP_STR_LEN];
    clusterLink *link;
    FUNC0(el);
    FUNC0(mask);
    FUNC0(privdata);

    while(max--) {
        cfd = FUNC4(server.neterr, fd, cip, sizeof(cip), &cport);
        if (cfd == ANET_ERR) {
            if (errno != EWOULDBLOCK)
                FUNC6(LL_VERBOSE,
                    "Accepting cluster node: %s", server.neterr);
            return;
        }
        FUNC3(NULL,cfd);
        FUNC2(NULL,cfd);

        /* Use non-blocking I/O for cluster messages. */
        FUNC6(LL_VERBOSE,"Accepted cluster node %s:%d", cip, cport);
        /* Create a link object we use to handle the connection.
         * It gets passed to the readable handler when data is available.
         * Initiallly the link->node pointer is set to NULL as we don't know
         * which node is, but the right node is references once we know the
         * node identity. */
        link = FUNC5(NULL);
        link->fd = cfd;
        FUNC1(server.el,cfd,AE_READABLE,clusterReadHandler,link);
    }
}