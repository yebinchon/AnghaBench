
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dictEntry {int dummy; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_1__ job ;
struct TYPE_5__ {int jobs; } ;


 struct dictEntry* dictFind (int ,int ) ;
 void* dictGetVal (struct dictEntry*) ;
 TYPE_2__ server ;

void *jobGetAssociatedValue(job *j) {
    struct dictEntry *de = dictFind(server.jobs, j->id);
    return de ? dictGetVal(de) : ((void*)0);
}
