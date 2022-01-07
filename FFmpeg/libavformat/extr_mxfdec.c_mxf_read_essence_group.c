
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int structural_components_count; int structural_components_refs; int duration; } ;
typedef TYPE_1__ MXFEssenceGroup ;
typedef int AVIOContext ;


 int avio_rb64 (int *) ;
 int mxf_read_strong_ref_array (int *,int *,int *) ;

__attribute__((used)) static int mxf_read_essence_group(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFEssenceGroup *essence_group = arg;
    switch (tag) {
    case 0x0202:
        essence_group->duration = avio_rb64(pb);
        break;
    case 0x0501:
        return mxf_read_strong_ref_array(pb, &essence_group->structural_components_refs,
                                             &essence_group->structural_components_count);
    }
    return 0;
}
