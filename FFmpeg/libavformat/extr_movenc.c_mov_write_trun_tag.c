
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int int64_t ;
struct TYPE_10__ {int size; int pos; int cts; } ;
struct TYPE_9__ {int flags; scalar_t__ first_trun; } ;
struct TYPE_8__ {int default_duration; int default_size; int default_sample_flags; scalar_t__ entry; int flags; int data_offset; TYPE_6__* cluster; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ MOVMuxContext ;
typedef int AVIOContext ;


 int FF_MOV_FLAG_DEFAULT_BASE_MOOF ;
 int FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS ;
 int FF_MOV_FLAG_OMIT_TFHD_OFFSET ;
 int MOV_TRACK_CTTS ;
 int MOV_TRUN_DATA_OFFSET ;
 int MOV_TRUN_FIRST_SAMPLE_FLAGS ;
 int MOV_TRUN_SAMPLE_CTS ;
 int MOV_TRUN_SAMPLE_DURATION ;
 int MOV_TRUN_SAMPLE_FLAGS ;
 int MOV_TRUN_SAMPLE_SIZE ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int get_cluster_duration (TYPE_1__*,int) ;
 int get_sample_flags (TYPE_1__*,TYPE_6__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_trun_tag(AVIOContext *pb, MOVMuxContext *mov,
                              MOVTrack *track, int moof_size,
                              int first, int end)
{
    int64_t pos = avio_tell(pb);
    uint32_t flags = MOV_TRUN_DATA_OFFSET;
    int i;

    for (i = first; i < end; i++) {
        if (get_cluster_duration(track, i) != track->default_duration)
            flags |= MOV_TRUN_SAMPLE_DURATION;
        if (track->cluster[i].size != track->default_size)
            flags |= MOV_TRUN_SAMPLE_SIZE;
        if (i > first && get_sample_flags(track, &track->cluster[i]) != track->default_sample_flags)
            flags |= MOV_TRUN_SAMPLE_FLAGS;
    }
    if (!(flags & MOV_TRUN_SAMPLE_FLAGS) && track->entry > 0 &&
         get_sample_flags(track, &track->cluster[0]) != track->default_sample_flags)
        flags |= MOV_TRUN_FIRST_SAMPLE_FLAGS;
    if (track->flags & MOV_TRACK_CTTS)
        flags |= MOV_TRUN_SAMPLE_CTS;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "trun");
    if (mov->flags & FF_MOV_FLAG_NEGATIVE_CTS_OFFSETS)
        avio_w8(pb, 1);
    else
        avio_w8(pb, 0);
    avio_wb24(pb, flags);

    avio_wb32(pb, end - first);
    if (mov->flags & FF_MOV_FLAG_OMIT_TFHD_OFFSET &&
        !(mov->flags & FF_MOV_FLAG_DEFAULT_BASE_MOOF) &&
        !mov->first_trun)
        avio_wb32(pb, 0);
    else
        avio_wb32(pb, moof_size + 8 + track->data_offset +
                      track->cluster[first].pos);
    if (flags & MOV_TRUN_FIRST_SAMPLE_FLAGS)
        avio_wb32(pb, get_sample_flags(track, &track->cluster[first]));

    for (i = first; i < end; i++) {
        if (flags & MOV_TRUN_SAMPLE_DURATION)
            avio_wb32(pb, get_cluster_duration(track, i));
        if (flags & MOV_TRUN_SAMPLE_SIZE)
            avio_wb32(pb, track->cluster[i].size);
        if (flags & MOV_TRUN_SAMPLE_FLAGS)
            avio_wb32(pb, get_sample_flags(track, &track->cluster[i]));
        if (flags & MOV_TRUN_SAMPLE_CTS)
            avio_wb32(pb, track->cluster[i].cts);
    }

    mov->first_trun = 0;
    return update_size(pb, pos);
}
