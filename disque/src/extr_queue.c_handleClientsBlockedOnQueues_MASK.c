#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  clients; } ;
typedef  TYPE_2__ queue ;
struct TYPE_15__ {TYPE_4__* value; } ;
typedef  TYPE_3__ listNode ;
typedef  int /*<<< orphan*/  job ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;
struct TYPE_16__ {TYPE_1__ bpop; } ;
typedef  TYPE_4__ client ;
struct TYPE_17__ {int /*<<< orphan*/  ready_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  NEEDJOBS_REACHED_ZERO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_2__*,unsigned long*) ; 
 TYPE_6__ server ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 

void FUNC14(void) {
    dictEntry *de;
    dictIterator *di;

    /* Don't waste time if there is nothing to do. */
    if (FUNC7(server.ready_queues) == 0) return;

    di = FUNC3(server.ready_queues);
    while((de = FUNC5(di)) != NULL) {
        queue *q = FUNC10(FUNC4(de));
        if (!q || !q->clients) continue;
        int numclients = FUNC9(q->clients);
        while(numclients--) {
            unsigned long qlen;
            listNode *ln = FUNC8(q->clients);
            client *c = ln->value;
            job *j = FUNC12(q,&qlen);

            if (!j) break; /* No longer elements, try next queue. */
            if (qlen == 0) FUNC11(q,NEEDJOBS_REACHED_ZERO);
            FUNC1(c,1);
            FUNC0(c,j,c->bpop.flags);
            FUNC13(c); /* This will remove it from q->clients. */
        }
    }
    FUNC6(di);
    FUNC2(server.ready_queues,NULL);
}