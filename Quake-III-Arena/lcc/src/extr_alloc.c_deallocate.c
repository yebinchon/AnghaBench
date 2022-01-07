
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * next; } ;


 unsigned int NELEMS (TYPE_1__**) ;
 TYPE_1__** arena ;
 int assert (int) ;
 TYPE_1__* first ;
 int * freeblocks ;

void deallocate(unsigned a) {
 assert(a < NELEMS(arena));
 arena[a]->next = freeblocks;
 freeblocks = first[a].next;
 first[a].next = ((void*)0);
 arena[a] = &first[a];
}
