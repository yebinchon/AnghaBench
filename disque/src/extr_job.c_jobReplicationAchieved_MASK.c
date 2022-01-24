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
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ delay; int /*<<< orphan*/ * nodes_confirmed; int /*<<< orphan*/  nodes_delivered; int /*<<< orphan*/  state; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ job ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  clusterNode ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  JOB_ID_LEN ; 
 int /*<<< orphan*/  JOB_STATE_ACTIVE ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 
 TYPE_5__* myself ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC15(job *j) {
    FUNC10(LL_VERBOSE,"Replication ACHIEVED %.*s",JOB_ID_LEN,j->id);

    /* Change the job state to active. This is critical to avoid the job
     * will be freed by unblockClient() if found still in the old state. */
    j->state = JOB_STATE_ACTIVE;

    /* Reply to the blocked client with the Job ID and unblock the client. */
    client *c = FUNC9(j);
    FUNC11(j,NULL);
    FUNC1(c,j);
    FUNC12(c);

    /* If the job was externally replicated, send a QUEUE message to one of
     * the nodes that acknowledged to have a copy, and forget about it ASAP. */
    if (FUNC3(j->nodes_delivered,myself->name) == NULL) {
        dictEntry *de = FUNC4(j->nodes_confirmed);
        if (de) {
            clusterNode *n = FUNC5(de);
            FUNC2(n,j,j->delay);
        }
        FUNC13(j);
        FUNC8(j);
        return C_ERR;
    }

    /* If set, cleanup nodes_confirmed to free memory. We'll reuse this
     * hash table again for ACKs tracking in order to garbage collect the
     * job once processed. */
    if (j->nodes_confirmed) {
        FUNC6(j->nodes_confirmed);
        j->nodes_confirmed = NULL;
    }

    /* Queue the job locally. */
    if (j->delay == 0)
        FUNC7(j,0); /* Will change the job state. */
    else
        FUNC14(j,0); /* Queue with delay. */

    FUNC0(j);
    return C_OK;
}