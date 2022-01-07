
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int job ;
struct TYPE_9__ {int argc; TYPE_4__** argv; } ;
typedef TYPE_2__ client ;
struct TYPE_11__ {TYPE_1__* cluster; } ;
struct TYPE_10__ {int ptr; } ;
struct TYPE_8__ {int nodes; } ;


 int CLUSTERMSG_NOFLAGS ;
 int CLUSTERMSG_TYPE_DELJOB ;
 scalar_t__ C_ERR ;
 int addReplyLongLong (TYPE_2__*,int) ;
 int clusterBroadcastDelJob (int *) ;
 int clusterBroadcastJobIDMessage (int ,int ,int ,int ,int ) ;
 int freeJob (int *) ;
 int * lookupJob (int ) ;
 TYPE_5__ server ;
 int unregisterJob (int *) ;
 scalar_t__ validateJobIDs (TYPE_2__*,TYPE_4__**,int) ;

void fastackCommand(client *c) {
    int j, known = 0;

    if (validateJobIDs(c,c->argv+1,c->argc-1) == C_ERR) return;


    for (j = 1; j < c->argc; j++) {
        job *job = lookupJob(c->argv[j]->ptr);
        if (job == ((void*)0)) {

            clusterBroadcastJobIDMessage(server.cluster->nodes,c->argv[j]->ptr,
                                         CLUSTERMSG_TYPE_DELJOB,0,
                                         CLUSTERMSG_NOFLAGS);
        } else {
            clusterBroadcastDelJob(job);
            unregisterJob(job);
            freeJob(job);
            known++;
        }
    }
    addReplyLongLong(c,known);
}
