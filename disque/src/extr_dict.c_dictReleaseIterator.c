
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int index; scalar_t__ table; scalar_t__ fingerprint; TYPE_4__* d; scalar_t__ safe; } ;
typedef TYPE_1__ dictIterator ;
struct TYPE_6__ {int iterators; } ;


 int assert (int) ;
 scalar_t__ dictFingerprint (TYPE_4__*) ;
 int zfree (TYPE_1__*) ;

void dictReleaseIterator(dictIterator *iter)
{
    if (!(iter->index == -1 && iter->table == 0)) {
        if (iter->safe)
            iter->d->iterators--;
        else
            assert(iter->fingerprint == dictFingerprint(iter->d));
    }
    zfree(iter);
}
