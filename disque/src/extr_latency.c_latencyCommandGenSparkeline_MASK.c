#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct sequence {scalar_t__ length; } ;
struct latencyTimeSeries {int idx; scalar_t__ max; TYPE_1__* samples; } ;
typedef  int /*<<< orphan*/  sds ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {scalar_t__ time; scalar_t__ latency; } ;

/* Variables and functions */
 int LATENCY_GRAPH_COLS ; 
 int LATENCY_TS_LEN ; 
 int /*<<< orphan*/  SPARKLINE_FILL ; 
 struct sequence* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct sequence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct sequence*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sequence*,scalar_t__,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 

sds FUNC10(char *event, struct latencyTimeSeries *ts) {
    int j;
    struct sequence *seq = FUNC0();
    sds graph = FUNC4();
    uint32_t min = 0, max = 0;

    for (j = 0; j < LATENCY_TS_LEN; j++) {
        int i = (ts->idx + j) % LATENCY_TS_LEN;
        int elapsed;
        char *label;
        char buf[64];

        if (ts->samples[i].time == 0) continue;
        /* Update min and max. */
        if (seq->length == 0) {
            min = max = ts->samples[i].latency;
        } else {
            if (ts->samples[i].latency > max) max = ts->samples[i].latency;
            if (ts->samples[i].latency < min) min = ts->samples[i].latency;
        }
        /* Use as label the number of seconds / minutes / hours / days
         * ago the event happened. */
        elapsed = FUNC8(NULL) - ts->samples[i].time;
        if (elapsed < 60)
            FUNC5(buf,sizeof(buf),"%ds",elapsed);
        else if (elapsed < 3600)
            FUNC5(buf,sizeof(buf),"%dm",elapsed/60);
        else if (elapsed < 3600*24)
            FUNC5(buf,sizeof(buf),"%dh",elapsed/3600);
        else
            FUNC5(buf,sizeof(buf),"%dd",elapsed/(3600*24));
        label = FUNC9(buf);
        FUNC7(seq,ts->samples[i].latency,label);
    }

    graph = FUNC3(graph,
        "%s - high %lu ms, low %lu ms (all time high %lu ms)\n", event,
        (unsigned long) max, (unsigned long) min, (unsigned long) ts->max);
    for (j = 0; j < LATENCY_GRAPH_COLS; j++)
        graph = FUNC2(graph,"-",1);
    graph = FUNC2(graph,"\n",1);
    graph = FUNC6(graph,seq,LATENCY_GRAPH_COLS,4,SPARKLINE_FILL);
    FUNC1(seq);
    return graph;
}