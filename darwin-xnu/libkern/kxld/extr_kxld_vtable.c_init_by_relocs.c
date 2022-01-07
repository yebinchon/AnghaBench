
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_13__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_25__ {scalar_t__ address; } ;
struct TYPE_21__ {scalar_t__ nitems; } ;
struct TYPE_24__ {int data; TYPE_13__ entries; TYPE_13__ relocs; int is_32_bit; } ;
struct TYPE_22__ {TYPE_7__* reloc; TYPE_3__* sym; } ;
struct TYPE_23__ {TYPE_1__ unpatched; } ;
typedef TYPE_2__ KXLDVTableEntry ;
typedef TYPE_3__ const KXLDVTable ;
typedef TYPE_3__ KXLDSym ;
typedef TYPE_3__ KXLDSect ;
typedef TYPE_3__ KXLDRelocator ;
typedef TYPE_7__ KXLDReloc ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_3__ const*) ;
 int finish ;
 int get_vtable_base_sizes (int ,scalar_t__*,scalar_t__*) ;
 void* kxld_array_get_item (TYPE_13__*,scalar_t__) ;
 int kxld_array_init (TYPE_13__*,int,scalar_t__) ;
 int kxld_reloc_get_reloc_index_by_offset (TYPE_13__*,scalar_t__,scalar_t__*) ;
 TYPE_3__* kxld_reloc_get_symbol (TYPE_3__ const*,TYPE_7__*,int ) ;
 scalar_t__ kxld_sym_get_section_offset (TYPE_3__ const*,TYPE_3__ const*) ;
 int require_noerr (int ,int ) ;

__attribute__((used)) static kern_return_t
init_by_relocs(KXLDVTable *vtable, const KXLDSym *vtable_sym,
    const KXLDSect *sect, const KXLDRelocator *relocator)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDReloc *reloc = ((void*)0);
    KXLDVTableEntry *entry = ((void*)0);
    KXLDSym *sym = ((void*)0);
    kxld_addr_t vtable_base_offset = 0;
    kxld_addr_t entry_offset = 0;
    u_int i = 0;
    u_int nentries = 0;
    u_int vtable_entry_size = 0;
    u_int vtable_header_size = 0;
    u_int base_reloc_index = 0;
    u_int reloc_index = 0;

    check(vtable);
    check(vtable_sym);
    check(sect);
    check(relocator);



    (void) get_vtable_base_sizes(relocator->is_32_bit,
        &vtable_entry_size, &vtable_header_size);

    vtable_base_offset = kxld_sym_get_section_offset(vtable_sym, sect) +
        vtable_header_size;



    rval = kxld_reloc_get_reloc_index_by_offset(&sect->relocs,
        vtable_base_offset, &base_reloc_index);
    require_noerr(rval, finish);







    reloc_index = base_reloc_index;
    entry_offset = vtable_base_offset;
    reloc = kxld_array_get_item(&sect->relocs, reloc_index);
    while (reloc->address == entry_offset) {
        ++nentries;
        if (!reloc_index) break;

        --reloc_index;

        reloc = kxld_array_get_item(&sect->relocs, reloc_index);
        entry_offset += vtable_entry_size;
    }



    rval = kxld_array_init(&vtable->entries, sizeof(KXLDVTableEntry), nentries);
    require_noerr(rval, finish);



    for (i = 0; i < vtable->entries.nitems; ++i) {
        reloc = kxld_array_get_item(&sect->relocs, base_reloc_index - i);
        entry = kxld_array_get_item(&vtable->entries, i);







        sym = kxld_reloc_get_symbol(relocator, reloc, sect->data);

        entry->unpatched.sym = sym;
        entry->unpatched.reloc = reloc;
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}
