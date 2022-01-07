
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* cmd; int argc; int argv; } ;
typedef TYPE_2__ client ;
struct TYPE_9__ {int stat_numcommands; int monitors; int loading; } ;
struct TYPE_7__ {int flags; long long microseconds; int calls; int (* proc ) (TYPE_2__*) ;} ;


 int CMD_CALL_SLOWLOG ;
 int CMD_CALL_STATS ;
 int CMD_FAST ;
 int CMD_SKIP_MONITOR ;
 int latencyAddSampleIfNeeded (char*,long long) ;
 scalar_t__ listLength (int ) ;
 int replicationFeedMonitors (TYPE_2__*,int ,int ,int ) ;
 TYPE_4__ server ;
 int slowlogPushEntryIfNeeded (int ,int ,long long) ;
 int stub1 (TYPE_2__*) ;
 long long ustime () ;

void call(client *c, int flags) {
    long long start, duration;



    if (listLength(server.monitors) &&
        !server.loading &&
        !(c->cmd->flags & CMD_SKIP_MONITOR))
    {
        replicationFeedMonitors(c,server.monitors,c->argv,c->argc);
    }


    start = ustime();
    c->cmd->proc(c);
    duration = ustime()-start;



    if (flags & CMD_CALL_SLOWLOG) {
        char *latency_event = (c->cmd->flags & CMD_FAST) ?
                              "fast-command" : "command";
        latencyAddSampleIfNeeded(latency_event,duration/1000);
        slowlogPushEntryIfNeeded(c->argv,c->argc,duration);
    }
    if (flags & CMD_CALL_STATS) {
        c->cmd->microseconds += duration;
        c->cmd->calls++;
    }
    server.stat_numcommands++;
}
