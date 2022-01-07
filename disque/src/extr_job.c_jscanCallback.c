
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct jscanFilter {int * state; scalar_t__ numstates; scalar_t__ queue; } ;
typedef int list ;
struct TYPE_4__ {size_t state; int queue; int nodes_delivered; } ;
typedef TYPE_1__ job ;
typedef int dictEntry ;


 TYPE_1__* dictGetKey (int const*) ;
 scalar_t__ dictSize (int ) ;
 int equalStringObjects (int ,scalar_t__) ;
 int listAddNodeTail (int *,TYPE_1__*) ;

void jscanCallback(void *privdata, const dictEntry *de) {
    void **pd = (void**)privdata;
    list *list = pd[0];
    struct jscanFilter *filter = pd[1];
    job *job = dictGetKey(de);


    if (dictSize(job->nodes_delivered) == 0) return;


    if (filter->queue && !equalStringObjects(job->queue,filter->queue)) return;
    if (filter->numstates && !filter->state[job->state]) return;



    listAddNodeTail(list,job);
}
