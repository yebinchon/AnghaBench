
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_7__ {scalar_t__ nitems; } ;
struct TYPE_6__ {void* vtable_index_created; void* vtables_created; int * interface; int * kext; int vtable_index; TYPE_3__ vtables; } ;
typedef int KXLDVTable ;
typedef TYPE_1__ KXLDKext ;


 void* FALSE ;
 int check (TYPE_1__*) ;
 int * kxld_array_get_item (TYPE_3__*,scalar_t__) ;
 int kxld_array_reset (TYPE_3__*) ;
 int kxld_dict_clear (int *) ;
 int kxld_vtable_clear (int *) ;

void
kxld_kext_clear(KXLDKext *kext)
{
    KXLDVTable *vtable = ((void*)0);
    u_int i;

    check(kext);

    for (i = 0; i < kext->vtables.nitems; ++i) {
        vtable = kxld_array_get_item(&kext->vtables, i);
        kxld_vtable_clear(vtable);
    }
    kxld_array_reset(&kext->vtables);
    kxld_dict_clear(&kext->vtable_index);

    kext->kext = ((void*)0);
    kext->interface = ((void*)0);
    kext->vtables_created = FALSE;
    kext->vtable_index_created = FALSE;
}
