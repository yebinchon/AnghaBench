#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ state; int /*<<< orphan*/  id; scalar_t__ nodes_delivered; scalar_t__ nodes_confirmed; } ;
typedef  TYPE_2__ job ;
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ clusterNode ;
struct TYPE_14__ {TYPE_1__* cluster; } ;
struct TYPE_11__ {scalar_t__ nodes; } ;

/* Variables and functions */
 scalar_t__ JOB_STATE_ACKED ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void FUNC7(clusterNode *sender, job *job, int known) {
    /* A dummy ACK is an acknowledged job that we created just becakse a client
     * send us ACKJOB about a job we were not aware. */
    int dummy_ack = FUNC3(job->nodes_delivered) == 0;

    FUNC5(LL_VERBOSE,"RECEIVED GOTACK FROM %.40s FOR JOB %.48s",
        sender->name, job->id);

    /* We should never receive a GOTACK for a job which is not acknowledged,
     * but it is more robust to handle it explicitly. */
    if (job->state != JOB_STATE_ACKED) return;

    /* If this is a dummy ACK, and we reached a node that knows about this job,
     * it's up to it to perform the garbage collection, so we can forget about
     * this job and reclaim memory. */
    if (dummy_ack && known) {
        FUNC5(LL_VERBOSE,"Deleting %.48s: authoritative node reached",
            job->id);
        FUNC6(job);
        FUNC4(job);
        return;
    }

    /* If the sender knows about the job, or if we have the sender in the list
     * of nodes that may have the job (even if it no longer remembers about
     * the job), we do two things:
     *
     * 1) Add the node to the list of nodes_delivered. It is likely already
     *    there... so this should be useless, but is a good invariant
     *    to enforce.
     * 2) Add the node to the list of nodes that acknowledged the ACK. */
    if (known || FUNC2(job->nodes_delivered,sender->name) != NULL) {
        FUNC1(job->nodes_delivered,sender->name,sender);
        /* job->nodes_confirmed exists if we started a job garbage collection,
         * but we may receive GOTACK messages in other conditions sometimes,
         * since we reply with SETACK to QUEUED and WILLQUEUE if the job is
         * acknowledged but we did not yet started to GC. So we need to test
         * if the hash table actually exists. */
        if (job->nodes_confirmed)
            FUNC1(job->nodes_confirmed,sender->name,sender);
    }

    /* If our job is actually a dummy ACK, we are still interested to collect
     * all the nodes in the cluster that reported they don't have a clue:
     * eventually if everybody in the cluster has no clue, we can safely remove
     * the dummy ACK. */
    if (!known && dummy_ack) {
        FUNC1(job->nodes_confirmed,sender->name,sender);
        if (FUNC3(job->nodes_confirmed) >= FUNC3(server.cluster->nodes))
        {
            FUNC5(LL_VERBOSE,
                "Deleting %.48s: dummy ACK not known cluster-wide",
                job->id);
            FUNC6(job);
            FUNC4(job);
            return;
        }
    }

    /* Finally the common case: our SETACK reached everybody. Broadcast
     * a DELJOB to all the nodes involved, and delete the job. */
    if (!dummy_ack && job->nodes_confirmed &&
         FUNC3(job->nodes_confirmed) >= FUNC3(job->nodes_delivered))
    {
        FUNC5(LL_VERBOSE,
            "Deleting %.48s: All nodes involved acknowledged the job",
            job->id);
        FUNC0(job);
        FUNC6(job);
        FUNC4(job);
        return;
    }
}