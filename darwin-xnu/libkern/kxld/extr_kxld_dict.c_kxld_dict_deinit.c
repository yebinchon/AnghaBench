
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int resize_buckets; int buckets; } ;
typedef TYPE_1__ KXLDDict ;


 int check (TYPE_1__*) ;
 int kxld_array_deinit (int *) ;

void
kxld_dict_deinit(KXLDDict *dict)
{
    check(dict);

    kxld_array_deinit(&dict->buckets);
    kxld_array_deinit(&dict->resize_buckets);
}
