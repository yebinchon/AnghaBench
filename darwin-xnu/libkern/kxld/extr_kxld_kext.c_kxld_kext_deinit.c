
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_8__ {scalar_t__ maxitems; } ;
struct TYPE_7__ {int vtable_index; TYPE_3__ vtables; } ;
typedef int KXLDVTable ;
typedef TYPE_1__ KXLDKext ;


 int bzero (TYPE_1__*,int) ;
 int check (TYPE_1__*) ;
 int kxld_array_deinit (TYPE_3__*) ;
 int * kxld_array_get_slot (TYPE_3__*,scalar_t__) ;
 int kxld_dict_deinit (int *) ;
 int kxld_vtable_deinit (int *) ;

void
kxld_kext_deinit(KXLDKext *kext)
{
    KXLDVTable *vtable = ((void*)0);
    u_int i;

    check(kext);

    for (i = 0; i < kext->vtables.maxitems; ++i) {
        vtable = kxld_array_get_slot(&kext->vtables, i);
        kxld_vtable_deinit(vtable);
    }
    kxld_array_deinit(&kext->vtables);
    kxld_dict_deinit(&kext->vtable_index);

    bzero(kext, sizeof(*kext));
}
