
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int num_entries; } ;
typedef TYPE_1__ KXLDDict ;


 int check (TYPE_1__ const*) ;

u_int
kxld_dict_get_num_entries(const KXLDDict *dict)
{
    check(dict);

    return dict->num_entries;
}
