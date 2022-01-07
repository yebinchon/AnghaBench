
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int relocs; } ;
struct TYPE_13__ {int base_addr; int locrelocs; int extrelocs; int sectnum; } ;
typedef TYPE_1__ KXLDSym ;
typedef TYPE_2__ KXLDSect ;
typedef int KXLDReloc ;
typedef TYPE_1__ KXLDObject ;


 int check (TYPE_1__ const*) ;
 int finish ;
 TYPE_2__* kxld_object_get_section_by_index (TYPE_1__ const*,int ) ;
 scalar_t__ kxld_object_is_final_image (TYPE_1__ const*) ;
 int * kxld_reloc_get_reloc_by_offset (int *,int ) ;
 int kxld_sym_get_section_offset (TYPE_1__ const*,TYPE_2__ const*) ;
 int require (TYPE_2__ const*,int ) ;

const KXLDReloc *
kxld_object_get_reloc_at_symbol(const KXLDObject *object, const KXLDSym *sym)
{
    const KXLDReloc *reloc = ((void*)0);
    const KXLDSect *sect = ((void*)0);
    uint32_t offset = 0;

    check(object);
    check(sym);

    sect = kxld_object_get_section_by_index(object, sym->sectnum);
    require(sect, finish);

    if (kxld_object_is_final_image(object)) {
        reloc = kxld_reloc_get_reloc_by_offset(&object->extrelocs,
                                               sym->base_addr);
        if (!reloc) {
            reloc = kxld_reloc_get_reloc_by_offset(&object->locrelocs,
                                                   sym->base_addr);
        }
    } else {
        offset = kxld_sym_get_section_offset(sym, sect);
        reloc = kxld_reloc_get_reloc_by_offset(&sect->relocs, offset);
    }

finish:
    return reloc;
}
