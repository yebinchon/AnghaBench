
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int kxld_addr_t ;
typedef scalar_t__ kern_return_t ;
typedef int KXLDReloc ;
typedef int KXLDArray ;


 scalar_t__ KERN_FAILURE ;
 int * kxld_array_get_item (int const*,int ) ;
 scalar_t__ kxld_reloc_get_reloc_index_by_offset (int const*,int ,int *) ;

KXLDReloc *
kxld_reloc_get_reloc_by_offset(const KXLDArray *relocs, kxld_addr_t offset)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDReloc *reloc = ((void*)0);
    u_int i = 0;

    rval = kxld_reloc_get_reloc_index_by_offset(relocs, offset, &i);
    if (rval) goto finish;

    reloc = kxld_array_get_item(relocs, i);

finish:
    return reloc;
}
