
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_1__ ;


typedef int kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_19__ {int kext; } ;
typedef TYPE_1__ const KXLDKext ;
typedef TYPE_1__ const KXLDDict ;


 scalar_t__ FALSE ;
 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_1__ const*) ;
 int create_vtables (TYPE_1__ const*,TYPE_1__ const*,int *) ;
 int finish ;
 scalar_t__ isSplitKext ;
 int kxld_object_index_cxx_symbols_by_value (int ) ;
 int kxld_object_index_symbols_by_name (int ) ;
 int kxld_object_process_relocations (int ,TYPE_1__ const*) ;
 int kxld_object_relocate (int ,int ) ;
 int patch_vtables (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int require_noerr (int ,int ) ;
 int resolve_symbols (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__ const*) ;
 int validate_symbols (TYPE_1__ const*) ;

kern_return_t
kxld_kext_relocate(KXLDKext *kext,
                   kxld_addr_t link_address,
                   KXLDDict *patched_vtables,
                   const KXLDDict *defined_symbols,
                   const KXLDDict *obsolete_symbols,
                   const KXLDDict *defined_cxx_symbols)
{
    kern_return_t rval = KERN_FAILURE;

    check(kext);
    check(patched_vtables);
    check(defined_symbols);
    check(obsolete_symbols);
    rval = kxld_object_index_cxx_symbols_by_value(kext->kext);
    require_noerr(rval, finish);

    rval = kxld_object_index_symbols_by_name(kext->kext);
    require_noerr(rval, finish);

    rval = kxld_object_relocate(kext->kext, link_address);
    require_noerr(rval, finish);

    rval = resolve_symbols(kext, defined_symbols, obsolete_symbols);
    require_noerr(rval, finish);

    rval = create_vtables(kext, defined_cxx_symbols, ((void*)0));
    require_noerr(rval, finish);

    if (isSplitKext == FALSE) {
        rval = patch_vtables(kext, patched_vtables, defined_symbols);
        require_noerr(rval, finish);
    }

    rval = validate_symbols(kext);
    require_noerr(rval, finish);

    rval = kxld_object_process_relocations(kext->kext, patched_vtables);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
   return rval;
}
