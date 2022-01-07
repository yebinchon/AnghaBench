
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argc; struct TYPE_4__* argv; } ;
typedef TYPE_1__ slowlogEntry ;


 int decrRefCount (TYPE_1__) ;
 int zfree (TYPE_1__*) ;

void slowlogFreeEntry(void *septr) {
    slowlogEntry *se = septr;
    int j;

    for (j = 0; j < se->argc; j++)
        decrRefCount(se->argv[j]);
    zfree(se->argv);
    zfree(se);
}
