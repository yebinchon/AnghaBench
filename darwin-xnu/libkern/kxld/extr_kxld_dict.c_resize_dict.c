
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_13__ {scalar_t__ state; int value; int key; } ;
struct TYPE_12__ {int nitems; } ;
struct TYPE_11__ {TYPE_2__ resize_buckets; TYPE_2__ buckets; int resize_threshold; scalar_t__ num_entries; } ;
typedef TYPE_1__ KXLDDict ;
typedef TYPE_2__ KXLDArray ;
typedef TYPE_3__ DictEntry ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int RESIZE_THRESHOLD (int) ;
 scalar_t__ USED ;
 int check (TYPE_1__*) ;
 int finish ;
 int kxld_array_clear (TYPE_2__*) ;
 TYPE_3__* kxld_array_get_item (TYPE_2__*,scalar_t__) ;
 int kxld_array_init (TYPE_2__*,int,scalar_t__) ;
 int kxld_dict_insert (TYPE_1__*,int ,int ) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
resize_dict(KXLDDict *dict)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDArray tmparray;
    DictEntry *entry = ((void*)0);
    u_int nbuckets = (dict->buckets.nitems * 2 + 1);
    u_int i = 0;

    check(dict);


    rval = kxld_array_init(&dict->resize_buckets, sizeof(DictEntry), nbuckets);
    require_noerr(rval, finish);


    tmparray = dict->buckets;
    dict->buckets = dict->resize_buckets;
    dict->resize_buckets = tmparray;


    dict->num_entries = 0;
    dict->resize_threshold = RESIZE_THRESHOLD(dict->buckets.nitems);


    for (i = 0; i < dict->resize_buckets.nitems; ++i) {
        entry = kxld_array_get_item(&dict->resize_buckets, i);
        if (entry->state == USED) {
            rval = kxld_dict_insert(dict, entry->key, entry->value);
            require_noerr(rval, finish);
        }
    }


    kxld_array_clear(&dict->resize_buckets);

    rval = KERN_SUCCESS;

finish:
    return rval;
}
