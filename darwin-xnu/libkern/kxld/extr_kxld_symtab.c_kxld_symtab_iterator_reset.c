
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx; } ;
typedef TYPE_1__ KXLDSymtabIterator ;


 int check (TYPE_1__*) ;

void
kxld_symtab_iterator_reset(KXLDSymtabIterator *iter)
{
    check(iter);
    iter->idx = 0;
}
