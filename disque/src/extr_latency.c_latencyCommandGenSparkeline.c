
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct sequence {scalar_t__ length; } ;
struct latencyTimeSeries {int idx; scalar_t__ max; TYPE_1__* samples; } ;
typedef int sds ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ time; scalar_t__ latency; } ;


 int LATENCY_GRAPH_COLS ;
 int LATENCY_TS_LEN ;
 int SPARKLINE_FILL ;
 struct sequence* createSparklineSequence () ;
 int freeSparklineSequence (struct sequence*) ;
 int sdscatlen (int ,char*,int) ;
 int sdscatprintf (int ,char*,char*,unsigned long,unsigned long,unsigned long) ;
 int sdsempty () ;
 int snprintf (char*,int,char*,int) ;
 int sparklineRender (int ,struct sequence*,int,int,int ) ;
 int sparklineSequenceAddSample (struct sequence*,scalar_t__,char*) ;
 int time (int *) ;
 char* zstrdup (char*) ;

sds latencyCommandGenSparkeline(char *event, struct latencyTimeSeries *ts) {
    int j;
    struct sequence *seq = createSparklineSequence();
    sds graph = sdsempty();
    uint32_t min = 0, max = 0;

    for (j = 0; j < LATENCY_TS_LEN; j++) {
        int i = (ts->idx + j) % LATENCY_TS_LEN;
        int elapsed;
        char *label;
        char buf[64];

        if (ts->samples[i].time == 0) continue;

        if (seq->length == 0) {
            min = max = ts->samples[i].latency;
        } else {
            if (ts->samples[i].latency > max) max = ts->samples[i].latency;
            if (ts->samples[i].latency < min) min = ts->samples[i].latency;
        }


        elapsed = time(((void*)0)) - ts->samples[i].time;
        if (elapsed < 60)
            snprintf(buf,sizeof(buf),"%ds",elapsed);
        else if (elapsed < 3600)
            snprintf(buf,sizeof(buf),"%dm",elapsed/60);
        else if (elapsed < 3600*24)
            snprintf(buf,sizeof(buf),"%dh",elapsed/3600);
        else
            snprintf(buf,sizeof(buf),"%dd",elapsed/(3600*24));
        label = zstrdup(buf);
        sparklineSequenceAddSample(seq,ts->samples[i].latency,label);
    }

    graph = sdscatprintf(graph,
        "%s - high %lu ms, low %lu ms (all time high %lu ms)\n", event,
        (unsigned long) max, (unsigned long) min, (unsigned long) ts->max);
    for (j = 0; j < LATENCY_GRAPH_COLS; j++)
        graph = sdscatlen(graph,"-",1);
    graph = sdscatlen(graph,"\n",1);
    graph = sparklineRender(graph,seq,LATENCY_GRAPH_COLS,4,SPARKLINE_FILL);
    freeSparklineSequence(seq);
    return graph;
}
