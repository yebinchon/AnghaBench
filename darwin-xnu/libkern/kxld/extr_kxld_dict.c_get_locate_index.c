
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_int ;
typedef int kern_return_t ;
struct TYPE_9__ {int nitems; } ;
struct TYPE_8__ {scalar_t__ state; int key; } ;
struct TYPE_7__ {int (* hash ) (TYPE_1__ const*,void const*) ;TYPE_5__ buckets; int (* cmp ) (int ,void const*) ;} ;
typedef TYPE_1__ KXLDDict ;
typedef TYPE_2__ DictEntry ;


 scalar_t__ EMPTY ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (int) ;
 TYPE_2__* kxld_array_get_item (TYPE_5__*,int) ;
 int stub1 (TYPE_1__ const*,void const*) ;
 int stub2 (int ,void const*) ;

__attribute__((used)) static kern_return_t
get_locate_index(const KXLDDict *dict, const void *key, u_int *_idx)
{
    kern_return_t rval = KERN_FAILURE;
    DictEntry *entry = ((void*)0);
    u_int base, idx;

    base = idx = dict->hash(dict, key);


    entry = kxld_array_get_item(&dict->buckets, idx);
    while (!dict->cmp(entry->key, key)) {
        if (entry->state == EMPTY) goto finish;

        idx = (idx + 1) % dict->buckets.nitems;
        if (idx == base) goto finish;

        entry = kxld_array_get_item(&dict->buckets, idx);
    }

    check(idx < dict->buckets.nitems);

    *_idx = idx;
    rval = KERN_SUCCESS;

finish:
    return rval;
}
