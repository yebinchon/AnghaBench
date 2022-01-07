
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_7__ {scalar_t__ idx; int (* test ) (int *) ;scalar_t__ negate; TYPE_1__* symtab; } ;
struct TYPE_6__ {TYPE_4__ syms; } ;
typedef TYPE_2__ KXLDSymtabIterator ;
typedef int KXLDSym ;


 int FALSE ;
 int check (TYPE_2__*) ;
 int * kxld_array_get_item (TYPE_4__*,scalar_t__) ;
 int stub1 (int *) ;

KXLDSym *
kxld_symtab_iterator_get_next(KXLDSymtabIterator *iter)
{
    KXLDSym *sym = ((void*)0);
    KXLDSym *tmp = ((void*)0);
    boolean_t cmp = FALSE;

    check(iter);

    for (; iter->idx < iter->symtab->syms.nitems; ++iter->idx) {
        tmp = kxld_array_get_item(&iter->symtab->syms, iter->idx);
        cmp = iter->test(tmp);
        if (iter->negate) cmp = !cmp;

        if (cmp) {
            sym = tmp;
            ++iter->idx;
            break;
        }
    }

    return sym;
}
