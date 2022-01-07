
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int kern_return_t ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {TYPE_6__ sects; int segname; } ;
typedef TYPE_1__ KXLDSeg ;
typedef TYPE_1__ KXLDSect ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int check (TYPE_1__*) ;
 int finish ;
 TYPE_1__** kxld_array_get_item (TYPE_6__*,scalar_t__) ;
 int require_action (int,int ,int ) ;
 int streq_safe (int ,int ,int) ;

kern_return_t
kxld_seg_add_section(KXLDSeg *seg, KXLDSect *sect)
{
    kern_return_t rval = KERN_FAILURE;
    KXLDSect **sectp = ((void*)0);
    u_int i;

    check(seg);
    check(sect);
    require_action(streq_safe(seg->segname, sect->segname, sizeof(seg->segname)),
        finish, rval=KERN_FAILURE);



    for (i = 0; i < seg->sects.nitems; ++i) {
        sectp = kxld_array_get_item(&seg->sects, i);
        if (((void*)0) == *sectp) {
            *sectp = sect;
            break;
        }
    }
    require_action(i < seg->sects.nitems, finish, rval=KERN_FAILURE);

    rval = KERN_SUCCESS;

finish:

    return rval;
}
