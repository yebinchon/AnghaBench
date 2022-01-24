#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  job ;
struct TYPE_9__ {int argc; TYPE_4__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_11__ {TYPE_1__* cluster; } ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_8__ {int /*<<< orphan*/  nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLUSTERMSG_NOFLAGS ; 
 int /*<<< orphan*/  CLUSTERMSG_TYPE_DELJOB ; 
 scalar_t__ C_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__ server ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,TYPE_4__**,int) ; 

void FUNC7(client *c) {
    int j, known = 0;

    if (FUNC6(c,c->argv+1,c->argc-1) == C_ERR) return;

    /* Perform the appropriate action for each job. */
    for (j = 1; j < c->argc; j++) {
        job *job = FUNC4(c->argv[j]->ptr);
        if (job == NULL) {
            /* Job not known, just broadcast the DELJOB message to everybody. */
            FUNC2(server.cluster->nodes,c->argv[j]->ptr,
                                         CLUSTERMSG_TYPE_DELJOB,0,
                                         CLUSTERMSG_NOFLAGS);
        } else {
            FUNC1(job);
            FUNC5(job);
            FUNC3(job);
            known++;
        }
    }
    FUNC0(c,known);
}