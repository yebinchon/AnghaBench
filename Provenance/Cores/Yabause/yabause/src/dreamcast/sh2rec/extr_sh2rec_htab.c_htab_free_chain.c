
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* block; } ;
struct TYPE_6__ {TYPE_1__ block; struct TYPE_6__* next; } ;
typedef TYPE_2__ htab_entry_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void htab_free_chain(htab_entry_t *ent) {
    htab_entry_t *i, *tmp;

    i = ent;
    while(i) {
        tmp = i->next;
        free(i->block.block);
        free(i);
        i = tmp;
    }
}
