
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct qscanFilter {int minlen; int maxlen; int importrate; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_1__ queue ;
typedef int list ;
typedef int dictEntry ;


 TYPE_1__* dictGetVal (int const*) ;
 int getQueueImportRate (TYPE_1__*) ;
 int incrRefCount (int ) ;
 int listAddNodeTail (int *,int ) ;
 scalar_t__ queueLength (TYPE_1__*) ;

void qscanCallback(void *privdata, const dictEntry *de) {
    void **pd = (void**)privdata;
    list *list = pd[0];
    struct qscanFilter *filter = pd[1];
    queue *queue = dictGetVal(de);
    long qlen = (filter->minlen != -1 || filter->maxlen != -1) ?
                    (long) queueLength(queue) : 0;


    if (filter->minlen != -1 && qlen < filter->minlen) return;
    if (filter->maxlen != -1 && qlen > filter->maxlen) return;
    if (filter->importrate != -1 &&
        getQueueImportRate(queue) < filter->importrate) return;



    incrRefCount(queue->name);
    listAddNodeTail(list,queue->name);
}
