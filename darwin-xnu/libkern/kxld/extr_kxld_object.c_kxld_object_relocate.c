
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_6__ {scalar_t__ nitems; } ;
struct TYPE_5__ {int sects; int symtab; TYPE_3__ segs; int link_addr; } ;
typedef int KXLDSeg ;
typedef TYPE_1__ KXLDObject ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_1__*) ;
 int finish ;
 int * kxld_array_get_item (TYPE_3__*,scalar_t__) ;
 int kxld_seg_relocate (int *,int ) ;
 int kxld_symtab_relocate (int ,int *) ;
 int require_noerr (int ,int ) ;

kern_return_t
kxld_object_relocate(KXLDObject *object, kxld_addr_t link_address)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSeg *seg = ((void*)0);
    u_int i = 0;

    check(object);

    object->link_addr = link_address;


    for (i = 0; i < object->segs.nitems; ++i) {
        seg = kxld_array_get_item(&object->segs, i);
        kxld_seg_relocate(seg, link_address);
    }


    rval = kxld_symtab_relocate(object->symtab, &object->sects);
    require_noerr(rval, finish);

    rval = KERN_SUCCESS;
finish:
   return rval;
}
