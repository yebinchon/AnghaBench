
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int track_id; int nb_frag_info; scalar_t__ data_offset; TYPE_1__* frag_info; } ;
struct TYPE_4__ {scalar_t__ offset; scalar_t__ time; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_tfra_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    int i;

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "tfra");
    avio_w8(pb, 1);
    avio_wb24(pb, 0);

    avio_wb32(pb, track->track_id);
    avio_wb32(pb, 0);
    avio_wb32(pb, track->nb_frag_info);
    for (i = 0; i < track->nb_frag_info; i++) {
        avio_wb64(pb, track->frag_info[i].time);
        avio_wb64(pb, track->frag_info[i].offset + track->data_offset);
        avio_w8(pb, 1);
        avio_w8(pb, 1);
        avio_w8(pb, 1);
    }

    return update_size(pb, pos);
}
