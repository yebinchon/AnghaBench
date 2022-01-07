
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resize_buckets; int buckets; scalar_t__ resize_threshold; scalar_t__ num_entries; int * cmp; int * hash; } ;
typedef TYPE_1__ KXLDDict ;


 int check (TYPE_1__*) ;
 int kxld_array_clear (int *) ;

void
kxld_dict_clear(KXLDDict *dict)
{
    check(dict);

    dict->hash = ((void*)0);
    dict->cmp = ((void*)0);
    dict->num_entries = 0;
    dict->resize_threshold = 0;
    kxld_array_clear(&dict->buckets);
    kxld_array_clear(&dict->resize_buckets);
}
