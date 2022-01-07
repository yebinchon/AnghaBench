
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int structural_components_count; int structural_components_refs; int origin; int data_definition_ul; int duration; } ;
typedef TYPE_1__ MXFSequence ;
typedef int AVIOContext ;


 int avio_r8 (int *) ;
 int avio_rb64 (int *) ;
 int avio_read (int *,int ,int) ;
 int mxf_read_strong_ref_array (int *,int *,int *) ;

__attribute__((used)) static int mxf_read_sequence(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFSequence *sequence = arg;
    switch(tag) {
    case 0x0202:
        sequence->duration = avio_rb64(pb);
        break;
    case 0x0201:
        avio_read(pb, sequence->data_definition_ul, 16);
        break;
        case 0x4b02:
        sequence->origin = avio_r8(pb);
        break;
    case 0x1001:
        return mxf_read_strong_ref_array(pb, &sequence->structural_components_refs,
                                             &sequence->structural_components_count);
    }
    return 0;
}
