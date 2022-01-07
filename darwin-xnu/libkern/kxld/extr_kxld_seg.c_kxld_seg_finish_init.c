
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef scalar_t__ kxld_size_t ;
typedef scalar_t__ kxld_addr_t ;
typedef int kern_return_t ;
struct TYPE_10__ {scalar_t__ base_addr; scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ nitems; } ;
struct TYPE_9__ {scalar_t__ base_addr; int vmsize; TYPE_1__ sects; } ;
typedef TYPE_2__ KXLDSeg ;
typedef TYPE_3__ KXLDSect ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int finish ;
 TYPE_3__* get_sect_by_index (TYPE_2__*,scalar_t__) ;
 int kxld_round_page_cross_safe (scalar_t__) ;
 int require_action (TYPE_3__*,int ,int ) ;

kern_return_t
kxld_seg_finish_init(KXLDSeg *seg)
{
    kern_return_t rval = KERN_FAILURE;
    u_int i = 0;
    KXLDSect *sect = ((void*)0);
    kxld_addr_t maxaddr = 0;
    kxld_size_t maxsize = 0;
    if ((seg->vmsize == 0) && (seg->sects.nitems)) {
        for (i = 0; i < seg->sects.nitems; ++i) {
            sect = get_sect_by_index(seg, i);
            require_action(sect, finish, rval=KERN_FAILURE);
            if (sect->base_addr > maxaddr) {
                maxaddr = sect->base_addr;
                maxsize = sect->size;
            }
        }
        seg->vmsize = kxld_round_page_cross_safe(maxaddr +
                                                 maxsize - seg->base_addr);

    }

    rval = KERN_SUCCESS;

finish:
    return rval;
}
