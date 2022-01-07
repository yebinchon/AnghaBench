
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct latencyTimeSeries {int dummy; } ;
typedef int sds ;
typedef int dictEntry ;
struct TYPE_15__ {int argc; TYPE_1__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_17__ {int latency_events; } ;
struct TYPE_16__ {int syntaxerr; } ;
struct TYPE_14__ {int * ptr; } ;


 int addReply (TYPE_2__*,int ) ;
 int addReplyBulkCBuffer (TYPE_2__*,int ,int ) ;
 int addReplyBulkCString (TYPE_2__*,int ) ;
 int addReplyErrorFormat (TYPE_2__*,char*,char*) ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int addReplyMultiBulkLen (TYPE_2__*,int ) ;
 int createLatencyReport () ;
 struct latencyTimeSeries* dictFetchValue (int ,int *) ;
 int * dictFind (int ,int *) ;
 char* dictGetKey (int *) ;
 struct latencyTimeSeries* dictGetVal (int *) ;
 int latencyCommandGenSparkeline (char*,struct latencyTimeSeries*) ;
 int latencyCommandReplyWithLatestEvents (TYPE_2__*) ;
 int latencyCommandReplyWithSamples (TYPE_2__*,struct latencyTimeSeries*) ;
 int latencyResetEvent (int *) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;
 TYPE_4__ server ;
 TYPE_3__ shared ;
 int strcasecmp (int *,char*) ;

void latencyCommand(client *c) {
    struct latencyTimeSeries *ts;

    if (!strcasecmp(c->argv[1]->ptr,"history") && c->argc == 3) {

        ts = dictFetchValue(server.latency_events,c->argv[2]->ptr);
        if (ts == ((void*)0)) {
            addReplyMultiBulkLen(c,0);
        } else {
            latencyCommandReplyWithSamples(c,ts);
        }
    } else if (!strcasecmp(c->argv[1]->ptr,"graph") && c->argc == 3) {

        sds graph;
        dictEntry *de;
        char *event;

        de = dictFind(server.latency_events,c->argv[2]->ptr);
        if (de == ((void*)0)) goto nodataerr;
        ts = dictGetVal(de);
        event = dictGetKey(de);

        graph = latencyCommandGenSparkeline(event,ts);
        addReplyBulkCString(c,graph);
        sdsfree(graph);
    } else if (!strcasecmp(c->argv[1]->ptr,"latest") && c->argc == 2) {

        latencyCommandReplyWithLatestEvents(c);
    } else if (!strcasecmp(c->argv[1]->ptr,"doctor") && c->argc == 2) {

        sds report = createLatencyReport();

        addReplyBulkCBuffer(c,report,sdslen(report));
        sdsfree(report);
    } else if (!strcasecmp(c->argv[1]->ptr,"reset") && c->argc >= 2) {

        if (c->argc == 2) {
            addReplyLongLong(c,latencyResetEvent(((void*)0)));
        } else {
            int j, resets = 0;

            for (j = 2; j < c->argc; j++)
                resets += latencyResetEvent(c->argv[j]->ptr);
            addReplyLongLong(c,resets);
        }
    } else {
        addReply(c,shared.syntaxerr);
    }
    return;

nodataerr:


    addReplyErrorFormat(c,
        "No samples available for event '%s'", (char*) c->argv[2]->ptr);
}
