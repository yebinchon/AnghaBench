
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ idx; TYPE_1__* symtab; scalar_t__ (* test ) (int ) ;} ;
struct TYPE_6__ {TYPE_4__ syms; } ;
typedef TYPE_2__ KXLDSymtabIterator ;


 int check (TYPE_2__ const*) ;
 int kxld_array_get_item (TYPE_4__*,scalar_t__) ;
 scalar_t__ stub1 (int ) ;

u_int
kxld_symtab_iterator_get_num_remaining(const KXLDSymtabIterator *iter)
{
    u_int idx = 0;
    u_int count = 0;

    check(iter);

    for (idx = iter->idx; idx < iter->symtab->syms.nitems; ++idx) {
        count += iter->test(kxld_array_get_item(&iter->symtab->syms, idx));
    }

    return count;
}
