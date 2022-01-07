
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mode; } ;
struct TYPE_5__ {int track_duration; scalar_t__ mode; int time; int timescale; int language; int entry; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ MOVMuxContext ;
typedef int AVIOContext ;


 int AV_LOG_ERROR ;
 int INT32_MAX ;
 scalar_t__ MODE_ISM ;
 scalar_t__ MODE_MOV ;
 int UINT64_C (int) ;
 int av_log (int *,int ,char*) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int ) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_mdhd_tag(AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track)
{
    int version = track->track_duration < INT32_MAX ? 0 : 1;

    if (track->mode == MODE_ISM)
        version = 1;

    (version == 1) ? avio_wb32(pb, 44) : avio_wb32(pb, 32);
    ffio_wfourcc(pb, "mdhd");
    avio_w8(pb, version);
    avio_wb24(pb, 0);
    if (version == 1) {
        avio_wb64(pb, track->time);
        avio_wb64(pb, track->time);
    } else {
        avio_wb32(pb, track->time);
        avio_wb32(pb, track->time);
    }
    avio_wb32(pb, track->timescale);
    if (!track->entry && mov->mode == MODE_ISM)
        (version == 1) ? avio_wb64(pb, UINT64_C(0xffffffffffffffff)) : avio_wb32(pb, 0xffffffff);
    else if (!track->entry)
        (version == 1) ? avio_wb64(pb, 0) : avio_wb32(pb, 0);
    else
        (version == 1) ? avio_wb64(pb, track->track_duration) : avio_wb32(pb, track->track_duration);
    avio_wb16(pb, track->language);
    avio_wb16(pb, 0);

    if (version != 0 && track->mode == MODE_MOV) {
        av_log(((void*)0), AV_LOG_ERROR,
               "FATAL error, file duration too long for timebase, this file will not be\n"
               "playable with QuickTime. Choose a different timebase with "
               "-video_track_timescale or a different container format\n");
    }

    return 32;
}
