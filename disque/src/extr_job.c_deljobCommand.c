
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int job ;
struct TYPE_6__ {int argc; TYPE_3__** argv; } ;
typedef TYPE_1__ client ;
struct TYPE_7__ {int ptr; } ;


 scalar_t__ C_ERR ;
 int addReplyLongLong (TYPE_1__*,int) ;
 int freeJob (int *) ;
 int * lookupJob (int ) ;
 int unregisterJob (int *) ;
 scalar_t__ validateJobIDs (TYPE_1__*,TYPE_3__**,int) ;

void deljobCommand(client *c) {
    int j, evicted = 0;

    if (validateJobIDs(c,c->argv+1,c->argc-1) == C_ERR) return;


    for (j = 1; j < c->argc; j++) {
        job *job = lookupJob(c->argv[j]->ptr);
        if (job == ((void*)0)) continue;
        unregisterJob(job);
        freeJob(job);
        evicted++;
    }
    addReplyLongLong(c,evicted);
}
