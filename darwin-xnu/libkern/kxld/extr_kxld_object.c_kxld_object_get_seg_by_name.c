
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_9__ {scalar_t__ nitems; } ;
struct TYPE_8__ {TYPE_6__ segs; } ;
struct TYPE_7__ {int segname; } ;
typedef TYPE_1__ KXLDSeg ;
typedef TYPE_2__ KXLDObject ;


 TYPE_1__* kxld_array_get_item (TYPE_6__*,scalar_t__) ;
 scalar_t__ streq_safe (char const*,int ,int) ;

KXLDSeg *
kxld_object_get_seg_by_name(const KXLDObject *object, const char *segname)
{
    KXLDSeg *seg = ((void*)0);
    u_int i = 0;

    for (i = 0; i < object->segs.nitems; ++i) {
        seg = kxld_array_get_item(&object->segs, i);

        if (streq_safe(segname, seg->segname, sizeof(seg->segname))) break;

        seg = ((void*)0);
    }

    return seg;
}
