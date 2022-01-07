
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
typedef int UID ;
struct TYPE_3__ {void* den; void* num; } ;
struct TYPE_4__ {int sequence_ref; TYPE_1__ edit_rate; int name; int track_number; void* track_id; } ;
typedef TYPE_2__ MXFTrack ;
typedef int AVIOContext ;


 void* avio_rb32 (int *) ;
 int avio_read (int *,int ,int) ;
 int mxf_read_utf16be_string (int *,int,int *) ;

__attribute__((used)) static int mxf_read_track(void *arg, AVIOContext *pb, int tag, int size, UID uid, int64_t klv_offset)
{
    MXFTrack *track = arg;
    switch(tag) {
    case 0x4801:
        track->track_id = avio_rb32(pb);
        break;
    case 0x4804:
        avio_read(pb, track->track_number, 4);
        break;
    case 0x4802:
        mxf_read_utf16be_string(pb, size, &track->name);
        break;
    case 0x4b01:
        track->edit_rate.num = avio_rb32(pb);
        track->edit_rate.den = avio_rb32(pb);
        break;
    case 0x4803:
        avio_read(pb, track->sequence_ref, 16);
        break;
    }
    return 0;
}
