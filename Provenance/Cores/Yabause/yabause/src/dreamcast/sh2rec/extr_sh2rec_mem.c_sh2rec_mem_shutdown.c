
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ sh2rec_mem_allocblock ;


 TYPE_1__* allocblocks ;
 int free (TYPE_1__*) ;
 int * freeblocks ;
 int * usedblocks ;

void sh2rec_mem_shutdown(void) {
    sh2rec_mem_allocblock *i, *tmp;


    i = allocblocks;
    while(i) {
        tmp = i->next;
        free(i);
        i = tmp;
    }


    allocblocks = ((void*)0);
    freeblocks = ((void*)0);
    usedblocks = ((void*)0);
}
