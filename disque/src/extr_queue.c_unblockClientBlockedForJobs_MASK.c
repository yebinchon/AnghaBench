#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  robj ;
struct TYPE_9__ {int /*<<< orphan*/ * clients; } ;
typedef  TYPE_2__ queue ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_8__ {int /*<<< orphan*/  queues; } ;
struct TYPE_10__ {TYPE_1__ bpop; } ;
typedef  TYPE_3__ client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QUEUE_MAX_IDLE_TIME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_2__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12(client *c) {
    dictEntry *de;
    dictIterator *di;

    di = FUNC2(c->bpop.queues);
    while((de = FUNC4(di)) != NULL) {
        robj *qname = FUNC3(de);
        queue *q = FUNC10(qname);
        FUNC11(q != NULL);

        FUNC6(q->clients,FUNC9(q->clients,c));
        if (FUNC7(q->clients) == 0) {
            FUNC8(q->clients);
            q->clients = NULL;
            FUNC0(q,QUEUE_MAX_IDLE_TIME);
        }
    }
    FUNC5(di);
    FUNC1(c->bpop.queues,NULL);
}