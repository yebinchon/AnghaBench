
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {scalar_t__ vtable_index_created; int vtable_index; TYPE_5__ vtables; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_1__ KXLDVTable ;
typedef TYPE_2__ KXLDKext ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ TRUE ;
 int finish ;
 TYPE_1__* kxld_array_get_item (TYPE_5__*,scalar_t__) ;
 int kxld_dict_init (int *,int ,int ,scalar_t__) ;
 int kxld_dict_insert (int *,int ,TYPE_1__*) ;
 int kxld_dict_string_cmp ;
 int kxld_dict_string_hash ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
create_vtable_index(KXLDKext *kext)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDVTable *vtable = ((void*)0);
    u_int i = 0;

    if (kext->vtable_index_created) {
        rval = KERN_SUCCESS;
        goto finish;
    }


    rval = kxld_dict_init(&kext->vtable_index, kxld_dict_string_hash,
        kxld_dict_string_cmp, kext->vtables.nitems);
    require_noerr(rval, finish);

    for (i = 0; i < kext->vtables.nitems; ++i) {
        vtable = kxld_array_get_item(&kext->vtables, i);
        rval = kxld_dict_insert(&kext->vtable_index, vtable->name, vtable);
        require_noerr(rval, finish);
    }

    kext->vtable_index_created = TRUE;
    rval = KERN_SUCCESS;
finish:
    return rval;
}
