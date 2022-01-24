#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  scalar_t__ kxld_addr_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_25__ {scalar_t__ address; } ;
struct TYPE_21__ {scalar_t__ nitems; } ;
struct TYPE_24__ {int /*<<< orphan*/  data; TYPE_13__ entries; TYPE_13__ relocs; int /*<<< orphan*/  is_32_bit; } ;
struct TYPE_22__ {TYPE_7__* reloc; TYPE_3__* sym; } ;
struct TYPE_23__ {TYPE_1__ unpatched; } ;
typedef  TYPE_2__ KXLDVTableEntry ;
typedef  TYPE_3__ const KXLDVTable ;
typedef  TYPE_3__ KXLDSym ;
typedef  TYPE_3__ KXLDSect ;
typedef  TYPE_3__ KXLDRelocator ;
typedef  TYPE_7__ KXLDReloc ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 int /*<<< orphan*/  finish ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 void* FUNC2 (TYPE_13__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*,scalar_t__,scalar_t__*) ; 
 TYPE_3__* FUNC5 (TYPE_3__ const*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__ const*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC8(KXLDVTable *vtable, const KXLDSym *vtable_sym, 
    const KXLDSect *sect, const KXLDRelocator *relocator)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDReloc *reloc = NULL;
    KXLDVTableEntry *entry = NULL;
    KXLDSym *sym = NULL;
    kxld_addr_t vtable_base_offset = 0;
    kxld_addr_t entry_offset = 0;
    u_int i = 0;
    u_int nentries = 0;
    u_int vtable_entry_size = 0;
    u_int vtable_header_size = 0;
    u_int base_reloc_index = 0;
    u_int reloc_index = 0;

    FUNC0(vtable);
    FUNC0(vtable_sym);
    FUNC0(sect);
    FUNC0(relocator);

    /* Find the first entry past the vtable padding */

    (void) FUNC1(relocator->is_32_bit, 
        &vtable_entry_size, &vtable_header_size);

    vtable_base_offset = FUNC6(vtable_sym, sect) + 
        vtable_header_size;
   
    /* Find the relocation entry at the start of the vtable */

    rval = FUNC4(&sect->relocs, 
        vtable_base_offset, &base_reloc_index);
    FUNC7(rval, finish);

    /* Count the number of consecutive relocation entries to find the number of
     * vtable entries.  For some reason, the __TEXT,__const relocations are
     * sorted in descending order, so we have to walk backwards.  Also, make
     * sure we don't run off the end of the section's relocs.
     */

    reloc_index = base_reloc_index;
    entry_offset = vtable_base_offset;
    reloc = FUNC2(&sect->relocs, reloc_index);
    while (reloc->address == entry_offset) {
        ++nentries;
        if (!reloc_index) break;

        --reloc_index;

        reloc = FUNC2(&sect->relocs, reloc_index);
        entry_offset += vtable_entry_size;
    }

    /* Allocate the symbol index */

    rval = FUNC3(&vtable->entries, sizeof(KXLDVTableEntry), nentries);
    FUNC7(rval, finish);

    /* Find the symbols for each vtable entry */

    for (i = 0; i < vtable->entries.nitems; ++i) {
        reloc = FUNC2(&sect->relocs, base_reloc_index - i);
        entry = FUNC2(&vtable->entries, i);

        /* If we can't find a symbol, it means it is a locally-defined,
         * non-external symbol that has been stripped.  We don't patch over
         * locally-defined symbols, so we leave the symbol as NULL and just
         * skip it.  We won't be able to patch subclasses with this symbol,
         * but there isn't much we can do about that.
         */
        sym = FUNC5(relocator, reloc, sect->data);

        entry->unpatched.sym = sym;
        entry->unpatched.reloc = reloc;
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}