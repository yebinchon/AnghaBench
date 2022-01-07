
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int nb_streams; int flags; scalar_t__ time; TYPE_1__* tracks; } ;
struct TYPE_4__ {scalar_t__ entry; int track_id; scalar_t__ timescale; int track_duration; } ;
typedef TYPE_2__ MOVMuxContext ;
typedef int AVIOContext ;


 int AV_ROUND_UP ;
 int FF_MOV_FLAG_EMPTY_MOOV ;
 int MOV_TIMESCALE ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ av_rescale_rnd (int ,int,scalar_t__,int ) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 int write_matrix (int *,int,int ,int ,int,int ,int ) ;

__attribute__((used)) static int mov_write_mvhd_tag(AVIOContext *pb, MOVMuxContext *mov)
{
    int max_track_id = 1, i;
    int64_t max_track_len = 0;
    int version;

    for (i = 0; i < mov->nb_streams; i++) {
        if (mov->tracks[i].entry > 0 && mov->tracks[i].timescale) {
            int64_t max_track_len_temp = av_rescale_rnd(mov->tracks[i].track_duration,
                                                MOV_TIMESCALE,
                                                mov->tracks[i].timescale,
                                                AV_ROUND_UP);
            if (max_track_len < max_track_len_temp)
                max_track_len = max_track_len_temp;
            if (max_track_id < mov->tracks[i].track_id)
                max_track_id = mov->tracks[i].track_id;
        }
    }


    if (mov->flags & FF_MOV_FLAG_EMPTY_MOOV) {
        max_track_len = 0;
        max_track_id = 1;
    }

    version = max_track_len < UINT32_MAX ? 0 : 1;
    avio_wb32(pb, version == 1 ? 120 : 108);

    ffio_wfourcc(pb, "mvhd");
    avio_w8(pb, version);
    avio_wb24(pb, 0);
    if (version == 1) {
        avio_wb64(pb, mov->time);
        avio_wb64(pb, mov->time);
    } else {
        avio_wb32(pb, mov->time);
        avio_wb32(pb, mov->time);
    }
    avio_wb32(pb, MOV_TIMESCALE);
    (version == 1) ? avio_wb64(pb, max_track_len) : avio_wb32(pb, max_track_len);

    avio_wb32(pb, 0x00010000);
    avio_wb16(pb, 0x0100);
    avio_wb16(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);


    write_matrix(pb, 1, 0, 0, 1, 0, 0);

    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, 0);
    avio_wb32(pb, max_track_id + 1);
    return 0x6c;
}
