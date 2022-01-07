
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {TYPE_1__* par; int tag; } ;
struct TYPE_5__ {scalar_t__ codec_id; scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 scalar_t__ AV_CODEC_ID_DVD_SUBTITLE ;
 int avio_tell (int *) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int avio_wl32 (int *,int ) ;
 int avio_write (int *,int ,scalar_t__) ;
 int mov_write_esds_tag (int *,TYPE_2__*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_subtitle_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    avio_wl32(pb, track->tag);
    avio_wb32(pb, 0);
    avio_wb16(pb, 0);
    avio_wb16(pb, 1);

    if (track->par->codec_id == AV_CODEC_ID_DVD_SUBTITLE)
        mov_write_esds_tag(pb, track);
    else if (track->par->extradata_size)
        avio_write(pb, track->par->extradata, track->par->extradata_size);

    return update_size(pb, pos);
}
