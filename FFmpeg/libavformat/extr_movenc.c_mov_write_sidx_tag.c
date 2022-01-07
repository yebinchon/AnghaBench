
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_7__ {scalar_t__ start_dts; scalar_t__ frag_start; scalar_t__ end_pts; int nb_frag_info; unsigned int track_id; unsigned int timescale; TYPE_2__* frag_info; scalar_t__ entry; TYPE_1__* cluster; } ;
struct TYPE_6__ {scalar_t__ time; scalar_t__ offset; int size; scalar_t__ duration; } ;
struct TYPE_5__ {scalar_t__ cts; scalar_t__ dts; unsigned int flags; } ;
typedef TYPE_3__ MOVTrack ;
typedef int AVIOContext ;


 int AV_LOG_ERROR ;
 unsigned int MOV_SYNC_SAMPLE ;
 int SEEK_SET ;
 int av_log (int *,int ,char*) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb16 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,unsigned int) ;
 int avio_wb64 (int *,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,scalar_t__) ;

__attribute__((used)) static int mov_write_sidx_tag(AVIOContext *pb,
                              MOVTrack *track, int ref_size, int total_sidx_size)
{
    int64_t pos = avio_tell(pb), offset_pos, end_pos;
    int64_t presentation_time, duration, offset;
    unsigned starts_with_SAP;
    int i, entries;

    if (track->entry) {
        entries = 1;
        presentation_time = track->start_dts + track->frag_start +
                            track->cluster[0].cts;
        duration = track->end_pts -
                   (track->cluster[0].dts + track->cluster[0].cts);
        starts_with_SAP = track->cluster[0].flags & MOV_SYNC_SAMPLE;


        if (presentation_time < 0) {
            duration += presentation_time;
            presentation_time = 0;
        }
    } else {
        entries = track->nb_frag_info;
        if (entries <= 0)
            return 0;
        presentation_time = track->frag_info[0].time;
    }

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "sidx");
    avio_w8(pb, 1);
    avio_wb24(pb, 0);
    avio_wb32(pb, track->track_id);
    avio_wb32(pb, track->timescale);
    avio_wb64(pb, presentation_time);
    offset_pos = avio_tell(pb);
    avio_wb64(pb, 0);
    avio_wb16(pb, 0);

    avio_wb16(pb, entries);
    for (i = 0; i < entries; i++) {
        if (!track->entry) {
            if (i > 1 && track->frag_info[i].offset != track->frag_info[i - 1].offset + track->frag_info[i - 1].size) {
               av_log(((void*)0), AV_LOG_ERROR, "Non-consecutive fragments, writing incorrect sidx\n");
            }
            duration = track->frag_info[i].duration;
            ref_size = track->frag_info[i].size;
            starts_with_SAP = 1;
        }
        avio_wb32(pb, (0 << 31) | (ref_size & 0x7fffffff));
        avio_wb32(pb, duration);
        avio_wb32(pb, (starts_with_SAP << 31) | (0 << 28) | 0);
    }

    end_pos = avio_tell(pb);
    offset = pos + total_sidx_size - end_pos;
    avio_seek(pb, offset_pos, SEEK_SET);
    avio_wb64(pb, offset);
    avio_seek(pb, end_pos, SEEK_SET);
    return update_size(pb, pos);
}
