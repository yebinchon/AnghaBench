
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_int ;
typedef TYPE_1__* kxld_dict_hash ;
typedef TYPE_1__* kxld_dict_cmp ;
typedef int kern_return_t ;
struct TYPE_8__ {int resize_threshold; scalar_t__ num_entries; struct TYPE_8__* cmp; struct TYPE_8__* hash; int buckets; } ;
typedef TYPE_1__ KXLDDict ;
typedef int DictEntry ;


 int DEFAULT_DICT_SIZE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int MIN_BUCKETS (int) ;
 int RESIZE_THRESHOLD (int) ;
 int check (TYPE_1__*) ;
 int finish ;
 int kxld_array_init (int *,int,int) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_dict_init(KXLDDict * dict, kxld_dict_hash hash, kxld_dict_cmp cmp,
    u_int num_entries)
{
    kern_return_t rval = KERN_FAILURE;
    u_int min_buckets = MIN_BUCKETS(num_entries);
    u_int num_buckets = DEFAULT_DICT_SIZE;

    check(dict);
    check(hash);
    check(cmp);




    while (min_buckets > num_buckets) {
        num_buckets *= 2;
        num_buckets++;
    }


    rval = kxld_array_init(&dict->buckets, sizeof(DictEntry), num_buckets);
    require_noerr(rval, finish);


    dict->hash = hash;
    dict->cmp = cmp;
    dict->num_entries = 0;
    dict->resize_threshold = RESIZE_THRESHOLD(num_buckets);

    rval = KERN_SUCCESS;

finish:
    return rval;
}
