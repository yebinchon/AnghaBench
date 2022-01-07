
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ mstime_t ;
struct TYPE_5__ {scalar_t__ added_node_time; int job; } ;
struct TYPE_6__ {int flags; scalar_t__ btype; TYPE_1__ bpop; } ;
typedef TYPE_2__ client ;
struct TYPE_7__ {scalar_t__ mstime; } ;


 scalar_t__ BLOCKED_JOB_REPL ;
 int CLIENT_BLOCKED ;
 scalar_t__ DELAYED_JOB_ADD_NODE_MIN_PERIOD ;
 scalar_t__ clusterReplicateJob (int ,int,int ) ;
 scalar_t__ mstime () ;
 TYPE_3__ server ;

int clientsCronHandleDelayedJobReplication(client *c) {

    if (!(c->flags & CLIENT_BLOCKED) || c->btype != BLOCKED_JOB_REPL)
        return 0;





    mstime_t elapsed = server.mstime - c->bpop.added_node_time;
    if (elapsed >= DELAYED_JOB_ADD_NODE_MIN_PERIOD) {
        if (clusterReplicateJob(c->bpop.job, 1, 0) > 0)
            c->bpop.added_node_time = mstime();
    }
    return 0;
}
