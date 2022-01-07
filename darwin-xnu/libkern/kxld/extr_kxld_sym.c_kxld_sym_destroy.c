
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int KXLDSym ;


 int check (int *) ;
 int kxld_free (int *,int) ;
 int kxld_sym_deinit (int *) ;

void
kxld_sym_destroy(KXLDSym *sym)
{
    check(sym);
    kxld_sym_deinit(sym);
    kxld_free(sym, sizeof(*sym));
}
