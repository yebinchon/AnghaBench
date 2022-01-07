
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_10__ {scalar_t__ nitems; } ;
struct TYPE_8__ {scalar_t__ kextSize; int * kextExecutable; } ;
struct TYPE_9__ {scalar_t__ target_order; scalar_t__ host_order; int * section_order; void* got_is_created; void* is_linked; void* is_final_image; void* is_kernel; scalar_t__ cpusubtype; scalar_t__ cputype; scalar_t__ filetype; TYPE_1__ split_info; int splitinfolc; scalar_t__ size; int * file; scalar_t__ symtab; int srcversion; int versionmin; int uuid; int relocator; TYPE_5__ locrelocs; TYPE_5__ extrelocs; TYPE_5__ sects; TYPE_5__ segs; } ;
typedef int KXLDSeg ;
typedef int KXLDSect ;
typedef TYPE_2__ KXLDObject ;


 void* FALSE ;
 int check (TYPE_2__*) ;
 scalar_t__ isOldInterface ;
 void* kxld_array_get_item (TYPE_5__*,scalar_t__) ;
 int kxld_array_reset (TYPE_5__*) ;
 scalar_t__ kxld_object_is_kernel (TYPE_2__*) ;
 int kxld_relocator_clear (int *) ;
 int kxld_sect_clear (int *) ;
 int kxld_seg_clear (int *) ;
 int kxld_splitinfolc_clear (int *) ;
 int kxld_srcversion_clear (int *) ;
 int kxld_symtab_clear (scalar_t__) ;
 int kxld_uuid_clear (int *) ;
 int kxld_versionmin_clear (int *) ;
 int unswap_macho (int *,scalar_t__,scalar_t__) ;

void kxld_object_clear(KXLDObject *object)
{
    KXLDSeg *seg = ((void*)0);
    KXLDSect *sect = ((void*)0);
    u_int i;
    u_char *my_file;

    check(object);

    if (isOldInterface) {
        my_file = object->file;
    }
    else {
        my_file = object->split_info.kextExecutable;
    }


    if (kxld_object_is_kernel(object)) {
        unswap_macho(my_file, object->host_order, object->target_order);
    }


    for (i = 0; i < object->segs.nitems; ++i) {
        seg = kxld_array_get_item(&object->segs, i);
        kxld_seg_clear(seg);
    }
    kxld_array_reset(&object->segs);

    for (i = 0; i < object->sects.nitems; ++i) {
        sect = kxld_array_get_item(&object->sects, i);
        kxld_sect_clear(sect);
    }
    kxld_array_reset(&object->sects);

    kxld_array_reset(&object->extrelocs);
    kxld_array_reset(&object->locrelocs);
    kxld_relocator_clear(&object->relocator);
    kxld_uuid_clear(&object->uuid);
    kxld_versionmin_clear(&object->versionmin);
    kxld_srcversion_clear(&object->srcversion);

    if (object->symtab) kxld_symtab_clear(object->symtab);

    if (isOldInterface) {
        object->file = ((void*)0);
        object->size = 0;
    }
    else {
        kxld_splitinfolc_clear(&object->splitinfolc);
        object->split_info.kextExecutable = ((void*)0);
        object->split_info.kextSize = 0;
    }
    object->filetype = 0;
    object->cputype = 0;
    object->cpusubtype = 0;
    object->is_kernel = FALSE;
    object->is_final_image = FALSE;
    object->is_linked = FALSE;
    object->got_is_created = FALSE;





    object->host_order = 0;
    object->target_order = 0;

}
