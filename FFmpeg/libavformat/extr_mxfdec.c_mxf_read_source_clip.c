
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_2__ {int source_track_id; int source_package_uid; int source_package_ul; void* start_position; void* duration; } ;
typedef TYPE_1__ MXFStructuralComponent ;
typedef int AVIOContext ;


 int avio_rb32 (int *) ;
 void* avio_rb64 (int *) ;
 int avio_read (int *,int ,int) ;

__attribute__((used)) static int mxf_read_source_clip(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFStructuralComponent *source_clip = arg;
    switch(tag) {
    case 0x0202:
        source_clip->duration = avio_rb64(pb);
        break;
    case 0x1201:
        source_clip->start_position = avio_rb64(pb);
        break;
    case 0x1101:

        avio_read(pb, source_clip->source_package_ul, 16);
        avio_read(pb, source_clip->source_package_uid, 16);
        break;
    case 0x1102:
        source_clip->source_track_id = avio_rb32(pb);
        break;
    }
    return 0;
}
