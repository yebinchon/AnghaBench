
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int first_trun; int nb_streams; TYPE_1__* tracks; } ;
struct TYPE_7__ {int entry; } ;
typedef TYPE_1__ MOVTrack ;
typedef TYPE_2__ MOVMuxContext ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_write_mfhd_tag (int *,TYPE_2__*) ;
 int mov_write_traf_tag (int *,TYPE_2__*,TYPE_1__*,int ,int) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_moof_tag_internal(AVIOContext *pb, MOVMuxContext *mov,
                                       int tracks, int moof_size)
{
    int64_t pos = avio_tell(pb);
    int i;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "moof");
    mov->first_trun = 1;

    mov_write_mfhd_tag(pb, mov);
    for (i = 0; i < mov->nb_streams; i++) {
        MOVTrack *track = &mov->tracks[i];
        if (tracks >= 0 && i != tracks)
            continue;
        if (!track->entry)
            continue;
        mov_write_traf_tag(pb, mov, track, pos, moof_size);
    }

    return update_size(pb, pos);
}
