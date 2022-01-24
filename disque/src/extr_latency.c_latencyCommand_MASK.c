#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct latencyTimeSeries {int dummy; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  dictEntry ;
struct TYPE_15__ {int argc; TYPE_1__** argv; } ;
typedef  TYPE_2__ client ;
struct TYPE_17__ {int /*<<< orphan*/  latency_events; } ;
struct TYPE_16__ {int /*<<< orphan*/  syntaxerr; } ;
struct TYPE_14__ {int /*<<< orphan*/ * ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct latencyTimeSeries* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 struct latencyTimeSeries* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct latencyTimeSeries*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,struct latencyTimeSeries*) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_4__ server ; 
 TYPE_3__ shared ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 

void FUNC18(client *c) {
    struct latencyTimeSeries *ts;

    if (!FUNC17(c->argv[1]->ptr,"history") && c->argc == 3) {
        /* LATENCY HISTORY <event> */
        ts = FUNC7(server.latency_events,c->argv[2]->ptr);
        if (ts == NULL) {
            FUNC5(c,0);
        } else {
            FUNC13(c,ts);
        }
    } else if (!FUNC17(c->argv[1]->ptr,"graph") && c->argc == 3) {
        /* LATENCY GRAPH <event> */
        sds graph;
        dictEntry *de;
        char *event;

        de = FUNC8(server.latency_events,c->argv[2]->ptr);
        if (de == NULL) goto nodataerr;
        ts = FUNC10(de);
        event = FUNC9(de);

        graph = FUNC11(event,ts);
        FUNC2(c,graph);
        FUNC15(graph);
    } else if (!FUNC17(c->argv[1]->ptr,"latest") && c->argc == 2) {
        /* LATENCY LATEST */
        FUNC12(c);
    } else if (!FUNC17(c->argv[1]->ptr,"doctor") && c->argc == 2) {
        /* LATENCY DOCTOR */
        sds report = FUNC6();

        FUNC1(c,report,FUNC16(report));
        FUNC15(report);
    } else if (!FUNC17(c->argv[1]->ptr,"reset") && c->argc >= 2) {
        /* LATENCY RESET */
        if (c->argc == 2) {
            FUNC4(c,FUNC14(NULL));
        } else {
            int j, resets = 0;

            for (j = 2; j < c->argc; j++)
                resets += FUNC14(c->argv[j]->ptr);
            FUNC4(c,resets);
        }
    } else {
        FUNC0(c,shared.syntaxerr);
    }
    return;

nodataerr:
    /* Common error when the user asks for an event we have no latency
     * information about. */
    FUNC3(c,
        "No samples available for event '%s'", (char*) c->argv[2]->ptr);
}