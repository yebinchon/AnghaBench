
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_long ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int vmsize; } ;
typedef int KXLDSymtab ;
typedef TYPE_1__ KXLDSeg ;
typedef int KXLDArray ;


 scalar_t__ kxld_reloc_get_macho_data_size (int const*,int const*) ;
 int kxld_round_page_cross_safe (int ) ;
 scalar_t__ kxld_symtab_get_macho_data_size (int const*,scalar_t__) ;

void
kxld_seg_populate_linkedit(KXLDSeg *seg, const KXLDSymtab *symtab, boolean_t is_32_bit





    , uint32_t splitinfolc_size
   )
{
    u_long size = 0;

    size += kxld_symtab_get_macho_data_size(symtab, is_32_bit);
    size += splitinfolc_size;

    seg->vmsize = kxld_round_page_cross_safe(size);
}
