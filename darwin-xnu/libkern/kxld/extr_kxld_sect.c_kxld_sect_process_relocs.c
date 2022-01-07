
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ nitems; } ;
struct TYPE_5__ {TYPE_4__ relocs; } ;
typedef TYPE_1__ KXLDSect ;
typedef int KXLDRelocator ;
typedef int KXLDReloc ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 int * kxld_array_get_item (TYPE_4__*,scalar_t__) ;
 int kxld_relocator_process_sect_reloc (int *,int *,TYPE_1__*) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_sect_process_relocs(KXLDSect *sect, KXLDRelocator *relocator)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDReloc *reloc = ((void*)0);
    u_int i = 0;

    for (i = 0; i < sect->relocs.nitems; ++i) {
        reloc = kxld_array_get_item(&sect->relocs, i);
        rval = kxld_relocator_process_sect_reloc(relocator, reloc, sect);
        require_noerr(rval, finish);
    }

    rval = KERN_SUCCESS;
finish:
    return rval;
}
