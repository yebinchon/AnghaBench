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
struct latencyTimeSeries {int idx; TYPE_1__* samples; } ;
typedef  int /*<<< orphan*/  client ;
struct TYPE_2__ {scalar_t__ time; scalar_t__ latency; } ;

/* Variables and functions */
 int LATENCY_TS_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 

void FUNC4(client *c, struct latencyTimeSeries *ts) {
    void *replylen = FUNC0(c);
    int samples = 0, j;

    for (j = 0; j < LATENCY_TS_LEN; j++) {
        int i = (ts->idx + j) % LATENCY_TS_LEN;

        if (ts->samples[i].time == 0) continue;
        FUNC2(c,2);
        FUNC1(c,ts->samples[i].time);
        FUNC1(c,ts->samples[i].latency);
        samples++;
    }
    FUNC3(c,replylen,samples);
}