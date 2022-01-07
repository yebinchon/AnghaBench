
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name_index; int cxx_index; int syms; } ;
typedef TYPE_1__ KXLDSymtab ;


 int bzero (TYPE_1__*,int) ;
 int check (TYPE_1__*) ;
 int kxld_array_deinit (int *) ;
 int kxld_dict_deinit (int *) ;

void
kxld_symtab_deinit(KXLDSymtab *symtab)
{
    check(symtab);

    kxld_array_deinit(&symtab->syms);
    kxld_dict_deinit(&symtab->cxx_index);
    kxld_dict_deinit(&symtab->name_index);
    bzero(symtab, sizeof(*symtab));
}
