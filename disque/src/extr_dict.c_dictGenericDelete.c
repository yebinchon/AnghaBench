
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {struct TYPE_15__* next; int key; } ;
typedef TYPE_2__ dictEntry ;
struct TYPE_16__ {TYPE_1__* ht; } ;
typedef TYPE_3__ dict ;
struct TYPE_14__ {scalar_t__ size; unsigned int sizemask; int used; TYPE_2__** table; } ;


 int DICT_ERR ;
 int DICT_OK ;
 int _dictRehashStep (TYPE_3__*) ;
 scalar_t__ dictCompareKeys (TYPE_3__*,void const*,int ) ;
 int dictFreeKey (TYPE_3__*,TYPE_2__*) ;
 int dictFreeVal (TYPE_3__*,TYPE_2__*) ;
 unsigned int dictHashKey (TYPE_3__*,void const*) ;
 scalar_t__ dictIsRehashing (TYPE_3__*) ;
 int zfree (TYPE_2__*) ;

__attribute__((used)) static int dictGenericDelete(dict *d, const void *key, int nofree)
{
    unsigned int h, idx;
    dictEntry *he, *prevHe;
    int table;

    if (d->ht[0].size == 0) return DICT_ERR;
    if (dictIsRehashing(d)) _dictRehashStep(d);
    h = dictHashKey(d, key);

    for (table = 0; table <= 1; table++) {
        idx = h & d->ht[table].sizemask;
        he = d->ht[table].table[idx];
        prevHe = ((void*)0);
        while(he) {
            if (dictCompareKeys(d, key, he->key)) {

                if (prevHe)
                    prevHe->next = he->next;
                else
                    d->ht[table].table[idx] = he->next;
                if (!nofree) {
                    dictFreeKey(d, he);
                    dictFreeVal(d, he);
                }
                zfree(he);
                d->ht[table].used--;
                return DICT_OK;
            }
            prevHe = he;
            he = he->next;
        }
        if (!dictIsRehashing(d)) break;
    }
    return DICT_ERR;
}
