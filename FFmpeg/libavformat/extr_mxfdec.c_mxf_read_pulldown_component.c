
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int input_segment_ref; } ;
typedef TYPE_1__ MXFPulldownComponent ;
typedef int AVIOContext ;


 int avio_read (int *,int ,int) ;

__attribute__((used)) static int mxf_read_pulldown_component(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFPulldownComponent *mxf_pulldown = arg;
    switch(tag) {
    case 0x0d01:
        avio_read(pb, mxf_pulldown->input_segment_ref, 16);
        break;
    }
    return 0;
}
