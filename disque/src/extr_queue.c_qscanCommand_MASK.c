#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct qscanFilter {int member_0; int member_1; int member_2; long minlen; long maxlen; long importrate; } ;
typedef  int /*<<< orphan*/  robj ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  list ;
struct TYPE_13__ {int argc; TYPE_6__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_16__ {char* ptr; } ;
struct TYPE_15__ {int /*<<< orphan*/  queues; } ;
struct TYPE_14__ {int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 long QSCAN_DEFAULT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_6__*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (TYPE_1__*,TYPE_6__*,unsigned long*) ; 
 int /*<<< orphan*/  qscanCallback ; 
 TYPE_3__ server ; 
 TYPE_2__ shared ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 

void FUNC15(client *c) {
    struct qscanFilter filter = {-1,-1,-1};
    int busyloop = 0; /* If true return all the queues in a blocking way. */
    long count = QSCAN_DEFAULT_COUNT;
    long maxiterations;
    unsigned long cursor = 0;
    int cursor_set = 0, j;

    /* Parse arguments and cursor if any. */
    for (j = 1; j < c->argc; j++) {
        int remaining = c->argc - j -1;
        char *opt = c->argv[j]->ptr;

        if (!FUNC14(opt,"count") && remaining) {
            if (FUNC6(c, c->argv[j+1], &count, NULL) !=
                C_OK) return;
            j++;
        } else if (!FUNC14(opt,"busyloop")) {
            busyloop = 1;
        } else if (!FUNC14(opt,"minlen") && remaining) {
            if (FUNC6(c, c->argv[j+1],&filter.minlen,NULL) !=
                C_OK) return;
            j++;
        } else if (!FUNC14(opt,"maxlen") && remaining) {
            if (FUNC6(c, c->argv[j+1],&filter.maxlen,NULL) !=
                C_OK) return;
            j++;
        } else if (!FUNC14(opt,"importrate") && remaining) {
            if (FUNC6(c, c->argv[j+1],
                &filter.importrate,NULL) != C_OK) return;
            j++;
        } else {
            if (cursor_set != 0) {
                FUNC0(c,shared.syntaxerr);
                return;
            }
            if (FUNC13(c,c->argv[j],&cursor) == C_ERR)
                return;
            cursor_set = 1;
        }
    }

    /* Scan the hash table to retrieve elements. */
    maxiterations = count*10; /* Put a bound in the work we'll do. */

    /* We pass two pointsr to the callback: the list where to append
     * elements and the filter structure so that the callback will refuse
     * to add non matching elements. */
    void *privdata[2];
    list *list = FUNC7();
    privdata[0] = list;
    privdata[1] = &filter;
    do {
        cursor = FUNC5(server.queues,cursor,qscanCallback,privdata);
    } while (cursor &&
             (busyloop || /* If it's a busyloop, don't check iterations & len */
              (maxiterations-- &&
               FUNC10(list) < (unsigned long)count)));

    /* Provide the reply to the client. */
    FUNC3(c, 2);
    FUNC2(c,cursor);

    FUNC3(c, FUNC10(list));
    listNode *node;
    while ((node = FUNC9(list)) != NULL) {
        robj *kobj = FUNC11(node);
        FUNC1(c, kobj);
        FUNC4(kobj);
        FUNC8(list, node);
    }
    FUNC12(list);
}