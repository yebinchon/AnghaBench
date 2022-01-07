
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; scalar_t__ num_deliv; scalar_t__ num_nacks; scalar_t__ awakeme; int * nodes_confirmed; int nodes_delivered; int * body; scalar_t__ flags; scalar_t__ gc_retry; int * queue; int id; } ;
typedef TYPE_1__ job ;


 int JOB_ID_LEN ;
 int clusterNodesDictType ;
 int dictCreate (int *,int *) ;
 int generateJobID (int ,int,int) ;
 int memcpy (int ,char*,int ) ;
 TYPE_1__* zmalloc (int) ;

job *createJob(char *id, int state, int ttl, int retry) {
    job *j = zmalloc(sizeof(job));


    if (id == ((void*)0))
        generateJobID(j->id,ttl,retry);
    else
        memcpy(j->id,id,JOB_ID_LEN);

    j->queue = ((void*)0);
    j->state = state;
    j->gc_retry = 0;
    j->flags = 0;
    j->body = ((void*)0);
    j->nodes_delivered = dictCreate(&clusterNodesDictType,((void*)0));
    j->nodes_confirmed = ((void*)0);
    j->awakeme = 0;


    j->num_nacks = 0;
    j->num_deliv = 0;
    return j;
}
