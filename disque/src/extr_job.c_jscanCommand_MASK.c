#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct jscanFilter {int* state; int /*<<< orphan*/  numstates; TYPE_5__* queue; } ;
typedef  int /*<<< orphan*/  listNode ;
typedef  int /*<<< orphan*/  list ;
typedef  int /*<<< orphan*/  job ;
typedef  int /*<<< orphan*/  filter ;
struct TYPE_15__ {int argc; TYPE_5__** argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_18__ {char* ptr; } ;
struct TYPE_17__ {int /*<<< orphan*/  jobs; } ;
struct TYPE_16__ {int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ C_ERR ; 
 scalar_t__ C_OK ; 
 long JSCAN_DEFAULT_COUNT ; 
 int JSCAN_REPLY_ALL ; 
 int JSCAN_REPLY_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_5__*,long*,int /*<<< orphan*/ *) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  jscanCallback ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct jscanFilter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (TYPE_1__*,TYPE_5__*,unsigned long*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 TYPE_2__ shared ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 

void FUNC19(client *c) {
    struct jscanFilter filter;
    int busyloop = 0; /* If true return all the jobs in a blocking way. */
    long count = JSCAN_DEFAULT_COUNT;
    long maxiterations;
    unsigned long cursor = 0;
    int cursor_set = 0, j;
    int reply_type = JSCAN_REPLY_ID;

    FUNC15(&filter,0,sizeof(filter));

    /* Parse arguments and cursor if any. */
    for (j = 1; j < c->argc; j++) {
        int remaining = c->argc - j -1;
        char *opt = c->argv[j]->ptr;

        if (!FUNC18(opt,"count") && remaining) {
            if (FUNC7(c, c->argv[j+1], &count, NULL) !=
                C_OK) return;
            j++;
        } else if (!FUNC18(opt,"busyloop")) {
            busyloop = 1;
        } else if (!FUNC18(opt,"queue") && remaining) {
            filter.queue = c->argv[j+1];
            j++;
        } else if (!FUNC18(opt,"state") && remaining) {
            int jobstate = FUNC8(c->argv[j+1]->ptr);
            if (jobstate == -1) {
                FUNC2(c,"Invalid job state name");
                return;
            }
            filter.state[jobstate] = 1;
            filter.numstates++;
            j++;
        } else if (!FUNC18(opt,"reply") && remaining) {
            if (!FUNC18(c->argv[j+1]->ptr,"id")) {
                reply_type = JSCAN_REPLY_ID;
            } else if (!FUNC18(c->argv[j+1]->ptr,"all")) {
                reply_type = JSCAN_REPLY_ALL;
            } else {
                FUNC2(c,"Invalid REPLY type, try ID or ALL");
                return;
            }
            j++;
        } else {
            if (cursor_set != 0) {
                FUNC0(c,shared.syntaxerr);
                return;
            }
            if (FUNC16(c,c->argv[j],&cursor) == C_ERR)
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
    list *list = FUNC9();
    privdata[0] = list;
    privdata[1] = &filter;
    do {
        cursor = FUNC6(server.jobs,cursor,jscanCallback,privdata);
    } while (cursor &&
             (busyloop || /* If it's a busyloop, don't check iterations & len */
              (maxiterations-- &&
               FUNC12(list) < (unsigned long)count)));

    /* Provide the reply to the client. */
    FUNC5(c, 2);
    FUNC1(c,cursor);

    FUNC5(c, FUNC12(list));
    listNode *node;
    while ((node = FUNC11(list)) != NULL) {
        job *j = FUNC13(node);
        if (reply_type == JSCAN_REPLY_ID) FUNC3(c,j);
        else if (reply_type == JSCAN_REPLY_ALL) FUNC4(c,j);
        else FUNC17("Unknown JSCAN reply type");
        FUNC10(list, node);
    }
    FUNC14(list);
}