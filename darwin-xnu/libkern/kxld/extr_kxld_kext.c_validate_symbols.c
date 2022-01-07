
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_6__ {int kext; } ;
struct TYPE_5__ {int name; } ;
typedef int KXLDSymtabIterator ;
typedef TYPE_1__ KXLDSym ;
typedef TYPE_2__ KXLDKext ;


 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int finish ;
 int kKxldLogErr ;
 int kKxldLogLinking ;
 int kxld_demangle (int ,char**,size_t*) ;
 int kxld_free (char*,size_t) ;
 int kxld_log (int ,int ,char*,...) ;
 int kxld_object_get_symtab (int ) ;
 int kxld_sym_is_unresolved ;
 TYPE_1__* kxld_symtab_iterator_get_next (int *) ;
 int kxld_symtab_iterator_init (int *,int ,int ,scalar_t__) ;
 int require_noerr_action (scalar_t__,int ,int ) ;

__attribute__((used)) static kern_return_t
validate_symbols(KXLDKext *kext)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSymtabIterator iter;
    KXLDSym *sym = ((void*)0);
    u_int error = FALSE;
    char *demangled_name = ((void*)0);
    size_t demangled_length = 0;


    kxld_symtab_iterator_init(&iter, kxld_object_get_symtab(kext->kext),
        kxld_sym_is_unresolved, FALSE);
    while ((sym = kxld_symtab_iterator_get_next(&iter))) {
        if (!error) {
            error = TRUE;
            kxld_log(kKxldLogLinking, kKxldLogErr,
                "The following symbols are unresolved for this kext:");
        }
        kxld_log(kKxldLogLinking, kKxldLogErr, "\t%s",
            kxld_demangle(sym->name, &demangled_name, &demangled_length));
    }
    require_noerr_action(error, finish, rval=KERN_FAILURE);

    rval = KERN_SUCCESS;

finish:
    if (demangled_name) kxld_free(demangled_name, demangled_length);
    return rval;
}
