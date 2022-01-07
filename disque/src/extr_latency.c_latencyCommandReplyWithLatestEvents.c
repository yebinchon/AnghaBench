
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct latencyTimeSeries {int idx; int max; TYPE_1__* samples; } ;
typedef int dictIterator ;
typedef int dictEntry ;
typedef int client ;
struct TYPE_4__ {int latency_events; } ;
struct TYPE_3__ {int latency; int time; } ;


 int LATENCY_TS_LEN ;
 int addReplyBulkCString (int *,char*) ;
 int addReplyLongLong (int *,int ) ;
 int addReplyMultiBulkLen (int *,int) ;
 int * dictGetIterator (int ) ;
 char* dictGetKey (int *) ;
 struct latencyTimeSeries* dictGetVal (int *) ;
 int * dictNext (int *) ;
 int dictReleaseIterator (int *) ;
 int dictSize (int ) ;
 TYPE_2__ server ;

void latencyCommandReplyWithLatestEvents(client *c) {
    dictIterator *di;
    dictEntry *de;

    addReplyMultiBulkLen(c,dictSize(server.latency_events));
    di = dictGetIterator(server.latency_events);
    while((de = dictNext(di)) != ((void*)0)) {
        char *event = dictGetKey(de);
        struct latencyTimeSeries *ts = dictGetVal(de);
        int last = (ts->idx + LATENCY_TS_LEN - 1) % LATENCY_TS_LEN;

        addReplyMultiBulkLen(c,4);
        addReplyBulkCString(c,event);
        addReplyLongLong(c,ts->samples[last].time);
        addReplyLongLong(c,ts->samples[last].latency);
        addReplyLongLong(c,ts->max);
    }
    dictReleaseIterator(di);
}
