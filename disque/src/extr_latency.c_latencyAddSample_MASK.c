#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct latencyTimeSeries {int idx; scalar_t__ max; TYPE_2__* samples; } ;
typedef  scalar_t__ mstime_t ;
struct TYPE_4__ {scalar_t__ time; scalar_t__ latency; } ;
struct TYPE_3__ {int /*<<< orphan*/  latency_events; } ;

/* Variables and functions */
 int LATENCY_TS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct latencyTimeSeries*) ; 
 struct latencyTimeSeries* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ server ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct latencyTimeSeries* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(char *event, mstime_t latency) {
    struct latencyTimeSeries *ts = FUNC1(server.latency_events,event);
    time_t now = FUNC3(NULL);
    int prev;

    /* Create the time series if it does not exist. */
    if (ts == NULL) {
        ts = FUNC4(sizeof(*ts));
        ts->idx = 0;
        ts->max = 0;
        FUNC2(ts->samples,0,sizeof(ts->samples));
        FUNC0(server.latency_events,FUNC5(event),ts);
    }

    /* If the previous sample is in the same second, we update our old sample
     * if this latency is > of the old one, or just return. */
    prev = (ts->idx + LATENCY_TS_LEN - 1) % LATENCY_TS_LEN;
    if (ts->samples[prev].time == now) {
        if (latency > ts->samples[prev].latency)
            ts->samples[prev].latency = latency;
        return;
    }

    ts->samples[ts->idx].time = FUNC3(NULL);
    ts->samples[ts->idx].latency = latency;
    if (latency > ts->max) ts->max = latency;

    ts->idx++;
    if (ts->idx == LATENCY_TS_LEN) ts->idx = 0;
}