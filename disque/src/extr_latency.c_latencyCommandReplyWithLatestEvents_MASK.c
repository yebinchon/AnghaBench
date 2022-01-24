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
struct latencyTimeSeries {int idx; int /*<<< orphan*/  max; TYPE_1__* samples; } ;
typedef  int /*<<< orphan*/  dictIterator ;
typedef  int /*<<< orphan*/  dictEntry ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_4__ {int /*<<< orphan*/  latency_events; } ;
struct TYPE_3__ {int /*<<< orphan*/  latency; int /*<<< orphan*/  time; } ;

/* Variables and functions */
 int LATENCY_TS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 struct latencyTimeSeries* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__ server ; 

void FUNC9(client *c) {
    dictIterator *di;
    dictEntry *de;

    FUNC2(c,FUNC8(server.latency_events));
    di = FUNC3(server.latency_events);
    while((de = FUNC6(di)) != NULL) {
        char *event = FUNC4(de);
        struct latencyTimeSeries *ts = FUNC5(de);
        int last = (ts->idx + LATENCY_TS_LEN - 1) % LATENCY_TS_LEN;

        FUNC2(c,4);
        FUNC0(c,event);
        FUNC1(c,ts->samples[last].time);
        FUNC1(c,ts->samples[last].latency);
        FUNC1(c,ts->max);
    }
    FUNC7(di);
}