
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_int ;
typedef int boolean_t ;
struct TYPE_3__ {int entries; } ;
typedef int KXLDVTableEntry ;
typedef TYPE_1__ KXLDVTable ;


 int get_vtable_base_sizes (int ,int*,int*) ;
 int * kxld_array_get_item (int *,int) ;

KXLDVTableEntry *
kxld_vtable_get_entry_for_offset(const KXLDVTable *vtable, u_long offset,
    boolean_t is_32_bit)
{
    KXLDVTableEntry *rval = ((void*)0);
    u_int vtable_entry_size = 0;
    u_int vtable_header_size = 0;
    u_int vtable_entry_idx = 0;

    (void) get_vtable_base_sizes(is_32_bit,
        &vtable_entry_size, &vtable_header_size);

    if (offset % vtable_entry_size) {
        goto finish;
    }

    vtable_entry_idx = (u_int) ((offset - vtable_header_size) / vtable_entry_size);
    rval = kxld_array_get_item(&vtable->entries, vtable_entry_idx);
finish:
    return rval;
}
