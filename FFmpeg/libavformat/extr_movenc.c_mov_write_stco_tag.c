
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int entry; scalar_t__ data_offset; TYPE_1__* cluster; scalar_t__ chunkCount; } ;
struct TYPE_5__ {scalar_t__ pos; int chunkNum; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wb32 (int *,scalar_t__) ;
 int avio_wb64 (int *,scalar_t__) ;
 int co64_required (TYPE_2__*) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_stco_tag(AVIOContext *pb, MOVTrack *track)
{
    int i;
    int mode64 = co64_required(track);
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    if (mode64)
        ffio_wfourcc(pb, "co64");
    else
        ffio_wfourcc(pb, "stco");
    avio_wb32(pb, 0);
    avio_wb32(pb, track->chunkCount);
    for (i = 0; i < track->entry; i++) {
        if (!track->cluster[i].chunkNum)
            continue;
        if (mode64 == 1)
            avio_wb64(pb, track->cluster[i].pos + track->data_offset);
        else
            avio_wb32(pb, track->cluster[i].pos + track->data_offset);
    }
    return update_size(pb, pos);
}
