
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ write_prft; int fc; TYPE_3__* tracks; } ;
struct TYPE_8__ {TYPE_2__* cluster; int track_id; TYPE_1__* st; int entry; } ;
struct TYPE_7__ {scalar_t__ pts; } ;
struct TYPE_6__ {int time_base; } ;
typedef TYPE_3__ MOVTrack ;
typedef TYPE_4__ MOVMuxContext ;
typedef int AVIOContext ;


 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 int AV_TIME_BASE_Q ;
 scalar_t__ MOV_PRFT_SRC_PTS ;
 scalar_t__ MOV_PRFT_SRC_WALLCLOCK ;
 scalar_t__ NTP_OFFSET_US ;
 int av_log (int ,int ,char*,...) ;
 scalar_t__ av_rescale_q (scalar_t__,int ,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int avio_wb64 (int *,scalar_t__) ;
 scalar_t__ ff_get_formatted_ntp_time (scalar_t__) ;
 scalar_t__ ff_ntp_time () ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,scalar_t__) ;

__attribute__((used)) static int mov_write_prft_tag(AVIOContext *pb, MOVMuxContext *mov, int tracks)
{
    int64_t pos = avio_tell(pb), pts_us, ntp_ts;
    MOVTrack *first_track;



    if (tracks > 0)
        return 0;
    first_track = &(mov->tracks[0]);

    if (!first_track->entry) {
        av_log(mov->fc, AV_LOG_WARNING, "Unable to write PRFT, no entries in the track\n");
        return 0;
    }

    if (first_track->cluster[0].pts == AV_NOPTS_VALUE) {
        av_log(mov->fc, AV_LOG_WARNING, "Unable to write PRFT, first PTS is invalid\n");
        return 0;
    }

    if (mov->write_prft == MOV_PRFT_SRC_WALLCLOCK) {
        ntp_ts = ff_get_formatted_ntp_time(ff_ntp_time());
    } else if (mov->write_prft == MOV_PRFT_SRC_PTS) {
        pts_us = av_rescale_q(first_track->cluster[0].pts,
                              first_track->st->time_base, AV_TIME_BASE_Q);
        ntp_ts = ff_get_formatted_ntp_time(pts_us + NTP_OFFSET_US);
    } else {
        av_log(mov->fc, AV_LOG_WARNING, "Unsupported PRFT box configuration: %d\n",
               mov->write_prft);
        return 0;
    }

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "prft");
    avio_w8(pb, 1);
    avio_wb24(pb, 0);
    avio_wb32(pb, first_track->track_id);
    avio_wb64(pb, ntp_ts);
    avio_wb64(pb, first_track->cluster[0].pts);
    return update_size(pb, pos);
}
