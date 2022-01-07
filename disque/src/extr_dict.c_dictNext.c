
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__** table; scalar_t__ size; } ;
typedef TYPE_1__ dictht ;
struct TYPE_9__ {size_t table; int index; TYPE_3__* entry; TYPE_3__* nextEntry; TYPE_6__* d; int fingerprint; scalar_t__ safe; } ;
typedef TYPE_2__ dictIterator ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_3__ dictEntry ;
struct TYPE_11__ {TYPE_1__* ht; int iterators; } ;


 int dictFingerprint (TYPE_6__*) ;
 scalar_t__ dictIsRehashing (TYPE_6__*) ;

dictEntry *dictNext(dictIterator *iter)
{
    while (1) {
        if (iter->entry == ((void*)0)) {
            dictht *ht = &iter->d->ht[iter->table];
            if (iter->index == -1 && iter->table == 0) {
                if (iter->safe)
                    iter->d->iterators++;
                else
                    iter->fingerprint = dictFingerprint(iter->d);
            }
            iter->index++;
            if (iter->index >= (long) ht->size) {
                if (dictIsRehashing(iter->d) && iter->table == 0) {
                    iter->table++;
                    iter->index = 0;
                    ht = &iter->d->ht[1];
                } else {
                    break;
                }
            }
            iter->entry = ht->table[iter->index];
        } else {
            iter->entry = iter->nextEntry;
        }
        if (iter->entry) {


            iter->nextEntry = iter->entry->next;
            return iter->entry;
        }
    }
    return ((void*)0);
}
