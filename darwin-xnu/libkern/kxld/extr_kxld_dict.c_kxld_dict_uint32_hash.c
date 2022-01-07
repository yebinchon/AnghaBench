
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct TYPE_4__ {int nitems; } ;
struct TYPE_5__ {TYPE_1__ buckets; } ;
typedef TYPE_2__ KXLDDict ;


 int check (void const*) ;

u_int
kxld_dict_uint32_hash(const KXLDDict *dict, const void *_key)
{
    uint32_t key = *(const uint32_t *) _key;

    check(_key);

    return (u_int) (key % dict->buckets.nitems);
}
