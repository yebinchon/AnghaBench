
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {int chunkCount; int entry; TYPE_1__* cluster; } ;
struct TYPE_4__ {int samples_in_chunk; int chunkNum; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_stsc_tag(AVIOContext *pb, MOVTrack *track)
{
    int index = 0, oldval = -1, i;
    int64_t entryPos, curpos;

    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "stsc");
    avio_wb32(pb, 0);
    entryPos = avio_tell(pb);
    avio_wb32(pb, track->chunkCount);
    for (i = 0; i < track->entry; i++) {
        if (oldval != track->cluster[i].samples_in_chunk && track->cluster[i].chunkNum) {
            avio_wb32(pb, track->cluster[i].chunkNum);
            avio_wb32(pb, track->cluster[i].samples_in_chunk);
            avio_wb32(pb, 0x1);
            oldval = track->cluster[i].samples_in_chunk;
            index++;
        }
    }
    curpos = avio_tell(pb);
    avio_seek(pb, entryPos, SEEK_SET);
    avio_wb32(pb, index);
    avio_seek(pb, curpos, SEEK_SET);

    return update_size(pb, pos);
}
