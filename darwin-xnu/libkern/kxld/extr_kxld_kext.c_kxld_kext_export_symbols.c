
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int kern_return_t ;
struct TYPE_4__ {int kext; scalar_t__ interface; } ;
typedef TYPE_1__ KXLDKext ;
typedef int KXLDDict ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_1__ const*) ;
 int export_symbols (int ,int *,int *) ;
 int export_symbols_through_interface (int ,scalar_t__,int *,int *,int *) ;
 int finish ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_kext_export_symbols(const KXLDKext *kext,
    KXLDDict *defined_symbols_by_name,
    KXLDDict *obsolete_symbols_by_name,
    KXLDDict *defined_cxx_symbols_by_value)
{
    kern_return_t rval = KERN_FAILURE;

    check(kext);

    if (kext->interface) {
        rval = export_symbols_through_interface(kext->kext, kext->interface,
            defined_symbols_by_name, obsolete_symbols_by_name,
            defined_cxx_symbols_by_value);
        require_noerr(rval, finish);
    } else {
        rval = export_symbols(kext->kext, defined_symbols_by_name,
            defined_cxx_symbols_by_value);
        require_noerr(rval, finish);
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}
