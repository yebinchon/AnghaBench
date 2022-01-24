#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_4__* level; struct TYPE_20__* backward; int /*<<< orphan*/ * obj; } ;
typedef  TYPE_5__ skiplistNode ;
struct TYPE_21__ {TYPE_3__* sl; } ;
typedef  TYPE_6__ queue ;
typedef  int /*<<< orphan*/  job ;
struct TYPE_22__ {int /*<<< orphan*/ * argv; } ;
typedef  TYPE_7__ client ;
struct TYPE_23__ {int /*<<< orphan*/  emptymultibulk; } ;
struct TYPE_19__ {TYPE_5__* forward; } ;
struct TYPE_18__ {TYPE_2__* header; TYPE_5__* tail; } ;
struct TYPE_17__ {TYPE_1__* level; } ;
struct TYPE_16__ {TYPE_5__* forward; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 int /*<<< orphan*/  GETJOB_FLAG_NONE ; 
 void* FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_7__*,int /*<<< orphan*/ ,long long*,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,void*,long long) ; 
 TYPE_8__ shared ; 

void FUNC6(client *c) {
    int newjobs = 0; /* Return from newest to oldest if true. */
    long long count, returned = 0;

    if (FUNC3(c,c->argv[2],&count,NULL) != C_OK)
        return;

    if (count < 0) {
        count = -count;
        newjobs = 1;
    }

    skiplistNode *sn = NULL;
    queue *q = FUNC4(c->argv[1]);

    if (q != NULL)
        sn = newjobs ? q->sl->tail : q->sl->header->level[0].forward;

    if (sn == NULL) {
        FUNC1(c,shared.emptymultibulk);
        return;
    }

    void *deflen = FUNC0(c);
    while(count-- && sn) {
        job *j = sn->obj;
        FUNC2(c, j, GETJOB_FLAG_NONE);
        returned++;
        if (newjobs)
            sn = sn->backward;
        else
            sn = sn->level[0].forward;
    }
    FUNC5(c,deflen,returned);
}