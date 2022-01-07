
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int used; TYPE_2__** table; } ;
typedef TYPE_1__ dictht ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
typedef TYPE_2__ dictEntry ;
struct TYPE_14__ {TYPE_1__* ht; } ;
typedef TYPE_3__ dict ;


 int _dictKeyIndex (TYPE_3__*,void*) ;
 int _dictRehashStep (TYPE_3__*) ;
 scalar_t__ dictIsRehashing (TYPE_3__*) ;
 int dictSetKey (TYPE_3__*,TYPE_2__*,void*) ;
 TYPE_2__* zmalloc (int) ;

dictEntry *dictAddRaw(dict *d, void *key)
{
    int index;
    dictEntry *entry;
    dictht *ht;

    if (dictIsRehashing(d)) _dictRehashStep(d);



    if ((index = _dictKeyIndex(d, key)) == -1)
        return ((void*)0);


    ht = dictIsRehashing(d) ? &d->ht[1] : &d->ht[0];
    entry = zmalloc(sizeof(*entry));
    entry->next = ht->table[index];
    ht->table[index] = entry;
    ht->used++;


    dictSetKey(d, entry, key);
    return entry;
}
