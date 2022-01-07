
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; int key; } ;
typedef TYPE_1__ dictEntry ;
struct TYPE_9__ {size_t rehashidx; TYPE_7__* ht; } ;
typedef TYPE_2__ dict ;
struct TYPE_10__ {scalar_t__ used; unsigned long size; unsigned int sizemask; TYPE_1__** table; } ;


 int _dictReset (TYPE_7__*) ;
 int assert (int) ;
 unsigned int dictHashKey (TYPE_2__*,int ) ;
 int dictIsRehashing (TYPE_2__*) ;
 int zfree (TYPE_1__**) ;

int dictRehash(dict *d, int n) {
    int empty_visits = n*10;
    if (!dictIsRehashing(d)) return 0;

    while(n-- && d->ht[0].used != 0) {
        dictEntry *de, *nextde;



        assert(d->ht[0].size > (unsigned long)d->rehashidx);
        while(d->ht[0].table[d->rehashidx] == ((void*)0)) {
            d->rehashidx++;
            if (--empty_visits == 0) return 1;
        }
        de = d->ht[0].table[d->rehashidx];

        while(de) {
            unsigned int h;

            nextde = de->next;

            h = dictHashKey(d, de->key) & d->ht[1].sizemask;
            de->next = d->ht[1].table[h];
            d->ht[1].table[h] = de;
            d->ht[0].used--;
            d->ht[1].used++;
            de = nextde;
        }
        d->ht[0].table[d->rehashidx] = ((void*)0);
        d->rehashidx++;
    }


    if (d->ht[0].used == 0) {
        zfree(d->ht[0].table);
        d->ht[0] = d->ht[1];
        _dictReset(&d->ht[1]);
        d->rehashidx = -1;
        return 0;
    }


    return 1;
}
