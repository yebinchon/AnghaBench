#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int mstime_t ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_14__ {int flags; int ctime; scalar_t__ ping_sent; int pong_received; int /*<<< orphan*/  name; TYPE_3__* link; scalar_t__ port; int /*<<< orphan*/  ip; } ;
typedef  TYPE_2__ clusterNode ;
struct TYPE_15__ {int fd; int ctime; } ;
typedef  TYPE_3__ clusterLink ;
struct TYPE_16__ {int cluster_node_timeout; TYPE_1__* cluster; int /*<<< orphan*/  el; int /*<<< orphan*/  neterr; } ;
struct TYPE_13__ {scalar_t__ state; int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  AE_READABLE ; 
 int /*<<< orphan*/  CLUSTERMSG_TYPE_MEET ; 
 int /*<<< orphan*/  CLUSTERMSG_TYPE_PING ; 
 scalar_t__ CLUSTER_FAIL ; 
 int CLUSTER_NODE_FAIL ; 
 int CLUSTER_NODE_HANDSHAKE ; 
 int CLUSTER_NODE_MEET ; 
 int CLUSTER_NODE_MYSELF ; 
 int CLUSTER_NODE_NOADDR ; 
 int CLUSTER_NODE_PFAIL ; 
 scalar_t__ CLUSTER_PORT_INCR ; 
 int /*<<< orphan*/  LL_DEBUG ; 
 int /*<<< orphan*/  NET_FIRST_BIND_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  clusterReadHandler ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_3__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 void* FUNC14 () ; 
 scalar_t__ FUNC15 (TYPE_2__*) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void FUNC17(void) {
    dictIterator *di;
    dictEntry *de;
    int update_state = 0;
    mstime_t min_pong = 0, now = FUNC14();
    clusterNode *min_pong_node = NULL;
    static unsigned long long iteration = 0;
    mstime_t handshake_timeout;

    iteration++; /* Number of times this function was called so far. */

    /* The handshake timeout is the time after which a handshake node that was
     * not turned into a normal node is removed from the nodes. Usually it is
     * just the NODE_TIMEOUT value, but when NODE_TIMEOUT is too small we use
     * the value of 1 second. */
    handshake_timeout = server.cluster_node_timeout;
    if (handshake_timeout < 1000) handshake_timeout = 1000;

    /* Check if we have disconnected nodes and re-establish the connection. */
    di = FUNC9(server.cluster->nodes);
    while((de = FUNC11(di)) != NULL) {
        clusterNode *node = FUNC10(de);

        if (node->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR)) continue;

        /* A Node in HANDSHAKE state has a limited lifespan equal to the
         * configured node timeout. */
        if (FUNC15(node) && now - node->ctime > handshake_timeout) {
            FUNC3(node);
            continue;
        }

        if (node->link == NULL) {
            int fd;
            mstime_t old_ping_sent;
            clusterLink *link;

            fd = FUNC2(server.neterr, node->ip,
                node->port+CLUSTER_PORT_INCR, NET_FIRST_BIND_ADDR);
            if (fd == -1) {
                /* We got a synchronous error from connect before
                 * clusterSendPing() had a chance to be called.
                 * If node->ping_sent is zero, failure detection can't work,
                 * so we claim we actually sent a ping now (that will
                 * be really sent as soon as the link is obtained). */
                if (node->ping_sent == 0) node->ping_sent = FUNC14();
                FUNC16(LL_DEBUG, "Unable to connect to "
                    "Cluster Node [%s]:%d -> %s", node->ip,
                    node->port+CLUSTER_PORT_INCR,
                    server.neterr);
                continue;
            }
            FUNC1(NULL,fd);
            link = FUNC7(node);
            link->fd = fd;
            node->link = link;
            FUNC0(server.el,link->fd,AE_READABLE,
                    clusterReadHandler,link);
            /* Queue a PING in the new connection ASAP: this is crucial
             * to avoid false positives in failure detection.
             *
             * If the node is flagged as MEET, we send a MEET message instead
             * of a PING one, to force the receiver to add us in its node
             * table. */
            old_ping_sent = node->ping_sent;
            FUNC4(link, node->flags & CLUSTER_NODE_MEET ?
                    CLUSTERMSG_TYPE_MEET : CLUSTERMSG_TYPE_PING);
            if (old_ping_sent) {
                /* If there was an active ping before the link was
                 * disconnected, we want to restore the ping time, otherwise
                 * replaced by the clusterSendPing() call. */
                node->ping_sent = old_ping_sent;
            }
            /* We can clear the flag after the first packet is sent.
             * If we'll never receive a PONG, we'll never send new packets
             * to this node. Instead after the PONG is received and we
             * are no longer in meet/handshake status, we want to send
             * normal PING packets. */
            node->flags &= ~CLUSTER_NODE_MEET;

            FUNC16(LL_DEBUG,"Connecting with Node %.40s at %s:%d",
                    node->name, node->ip, node->port+CLUSTER_PORT_INCR);
        }
    }
    FUNC12(di);

    /* Ping some random node 1 time every 10 iterations, so that we usually ping
     * one random node every second. */
    if (!(iteration % 10)) {
        int j;

        /* Check a few random nodes and ping the one with the oldest
         * pong_received time. */
        for (j = 0; j < 5; j++) {
            de = FUNC8(server.cluster->nodes);
            clusterNode *this = FUNC10(de);

            /* Don't ping nodes disconnected or with a ping currently active. */
            if (this->link == NULL || this->ping_sent != 0) continue;
            if (this->flags & (CLUSTER_NODE_MYSELF|CLUSTER_NODE_HANDSHAKE))
                continue;
            if (min_pong_node == NULL || min_pong > this->pong_received) {
                min_pong_node = this;
                min_pong = this->pong_received;
            }
        }
        if (min_pong_node) {
            FUNC16(LL_DEBUG,"Pinging node %.40s", min_pong_node->name);
            FUNC4(min_pong_node->link, CLUSTERMSG_TYPE_PING);
        }
    }

    /* Iterate nodes to check if we need to flag something as failing.
     * This loop is also responsible to:
     * 1) Check if there are orphaned masters (masters without non failing
     *    slaves).
     * 2) Count the max number of non failing slaves for a single master.
     * 3) Count the number of slaves for our master, if we are a slave. */
    di = FUNC9(server.cluster->nodes);
    while((de = FUNC11(di)) != NULL) {
        clusterNode *node = FUNC10(de);
        now = FUNC14(); /* Use an updated time at every iteration. */
        mstime_t delay;

        if (node->flags &
            (CLUSTER_NODE_MYSELF|CLUSTER_NODE_NOADDR|CLUSTER_NODE_HANDSHAKE))
                continue;

        /* If we are waiting for the PONG more than half the cluster
         * timeout, reconnect the link: maybe there is a connection
         * issue even if the node is alive. */
        if (node->link && /* is connected */
            now - node->link->ctime >
            server.cluster_node_timeout && /* was not already reconnected */
            node->ping_sent && /* we already sent a ping */
            node->pong_received < node->ping_sent && /* still waiting pong */
            /* and we are waiting for the pong more than timeout/2 */
            now - node->ping_sent > server.cluster_node_timeout/2)
        {
            /* Disconnect the link, it will be reconnected automatically. */
            FUNC13(node->link);
        }

        /* If we have currently no active ping in this instance, and the
         * received PONG is older than half the cluster timeout, send
         * a new ping now, to ensure all the nodes are pinged without
         * a too big delay. */
        if (node->link &&
            node->ping_sent == 0 &&
            (now - node->pong_received) > server.cluster_node_timeout/2)
        {
            FUNC4(node->link, CLUSTERMSG_TYPE_PING);
            continue;
        }

        /* Check only if we have an active ping for this instance. */
        if (node->ping_sent == 0) continue;

        /* Compute the delay of the PONG. Note that if we already received
         * the PONG, then node->ping_sent is zero, so can't reach this
         * code at all. */
        delay = now - node->ping_sent;

        if (delay > server.cluster_node_timeout) {
            /* Timeout reached. Set the node as possibly failing if it is
             * not already in this state. */
            if (!(node->flags & (CLUSTER_NODE_PFAIL|CLUSTER_NODE_FAIL))) {
                FUNC16(LL_DEBUG,"*** NODE %.40s possibly failing",
                    node->name);
                node->flags |= CLUSTER_NODE_PFAIL;
                update_state = 1;
            }
        }
    }
    FUNC12(di);

    if (update_state || server.cluster->state == CLUSTER_FAIL)
        FUNC6();

    FUNC5();
}