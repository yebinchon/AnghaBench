
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dictEntry {int dummy; } ;
typedef int job ;
struct TYPE_2__ {int jobs; } ;


 struct dictEntry* dictFind (int ,char*) ;
 int * dictGetKey (struct dictEntry*) ;
 TYPE_1__ server ;

job *lookupJob(char *id) {
    struct dictEntry *de = dictFind(server.jobs, id);
    return de ? dictGetKey(de) : ((void*)0);
}
