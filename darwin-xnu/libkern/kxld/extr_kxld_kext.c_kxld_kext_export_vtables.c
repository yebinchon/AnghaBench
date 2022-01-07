
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_16__ {scalar_t__ nitems; } ;
struct TYPE_18__ {TYPE_11__ vtables; } ;
struct TYPE_17__ {int name; } ;
typedef TYPE_1__ KXLDVTable ;
typedef TYPE_2__ const KXLDKext ;
typedef TYPE_2__ const KXLDDict ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_2__ const*) ;
 int create_vtables (TYPE_2__ const*,TYPE_2__ const*,TYPE_2__ const*) ;
 int finish ;
 TYPE_1__* kxld_array_get_item (TYPE_11__*,scalar_t__) ;
 int kxld_dict_insert (TYPE_2__ const*,int ,TYPE_1__*) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_kext_export_vtables(KXLDKext *kext, const KXLDDict *defined_cxx_symbols,
    const KXLDDict *defined_symbols, KXLDDict *vtables)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDVTable *vtable = ((void*)0);
    u_int i = 0;

    check(kext);
    check(defined_symbols);
    check(defined_cxx_symbols);
    check(vtables);

    rval = create_vtables(kext, defined_cxx_symbols, defined_symbols);
    require_noerr(rval, finish);

    for (i = 0; i < kext->vtables.nitems; ++i) {
        vtable = kxld_array_get_item(&kext->vtables, i);

        rval = kxld_dict_insert(vtables, vtable->name, vtable);
        require_noerr(rval, finish);
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}
