
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; int * nextEntry; int * entry; scalar_t__ safe; scalar_t__ table; int * d; } ;
typedef TYPE_1__ dictIterator ;
typedef int dict ;


 TYPE_1__* zmalloc (int) ;

dictIterator *dictGetIterator(dict *d)
{
    dictIterator *iter = zmalloc(sizeof(*iter));

    iter->d = d;
    iter->table = 0;
    iter->index = -1;
    iter->safe = 0;
    iter->entry = ((void*)0);
    iter->nextEntry = ((void*)0);
    return iter;
}
