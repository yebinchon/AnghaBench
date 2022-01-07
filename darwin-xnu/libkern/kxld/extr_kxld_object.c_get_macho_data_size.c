
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {int extrelocs; int locrelocs; int symtab; TYPE_5__ segs; } ;
typedef int KXLDSeg ;
typedef TYPE_1__ KXLDObject ;


 int SEG_LINKEDIT ;
 int check (TYPE_1__ const*) ;
 int * kxld_array_get_item (TYPE_5__*,scalar_t__) ;
 int * kxld_object_get_seg_by_name (TYPE_1__ const*,int ) ;
 int kxld_object_is_32_bit (TYPE_1__ const*) ;
 scalar_t__ kxld_reloc_get_macho_data_size (int *,int *) ;
 scalar_t__ kxld_round_page_cross_safe (scalar_t__) ;
 scalar_t__ kxld_seg_get_vmsize (int *) ;
 scalar_t__ kxld_symtab_get_macho_data_size (int ,int ) ;
 scalar_t__ target_supports_slideable_kexts (TYPE_1__ const*) ;

__attribute__((used)) static u_long
get_macho_data_size(const KXLDObject *object)
{
    KXLDSeg *seg = ((void*)0);
    u_long data_size = 0;
    u_int i = 0;

    check(object);


    for (i = 0; i < object->segs.nitems; ++i) {
        seg = kxld_array_get_item(&object->segs, i);
        data_size += (u_long) kxld_seg_get_vmsize(seg);
    }
    return data_size;
}
