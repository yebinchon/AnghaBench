
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct latencyTimeSeries {int idx; TYPE_1__* samples; } ;
typedef int client ;
struct TYPE_2__ {scalar_t__ time; scalar_t__ latency; } ;


 int LATENCY_TS_LEN ;
 void* addDeferredMultiBulkLength (int *) ;
 int addReplyLongLong (int *,scalar_t__) ;
 int addReplyMultiBulkLen (int *,int) ;
 int setDeferredMultiBulkLength (int *,void*,int) ;

void latencyCommandReplyWithSamples(client *c, struct latencyTimeSeries *ts) {
    void *replylen = addDeferredMultiBulkLength(c);
    int samples = 0, j;

    for (j = 0; j < LATENCY_TS_LEN; j++) {
        int i = (ts->idx + j) % LATENCY_TS_LEN;

        if (ts->samples[i].time == 0) continue;
        addReplyMultiBulkLen(c,2);
        addReplyLongLong(c,ts->samples[i].time);
        addReplyLongLong(c,ts->samples[i].latency);
        samples++;
    }
    setDeferredMultiBulkLength(c,replylen,samples);
}
