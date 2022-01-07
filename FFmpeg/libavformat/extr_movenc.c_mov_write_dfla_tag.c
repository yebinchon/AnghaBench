
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* par; } ;
struct TYPE_4__ {scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int FLAC_METADATA_TYPE_STREAMINFO ;
 scalar_t__ FLAC_STREAMINFO_SIZE ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,scalar_t__) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,int ,scalar_t__) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_dfla_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "dfLa");
    avio_w8(pb, 0);
    avio_wb24(pb, 0);


    if (track->par->extradata_size != FLAC_STREAMINFO_SIZE)
        return AVERROR_INVALIDDATA;


    avio_w8(pb, 1 << 7 | FLAC_METADATA_TYPE_STREAMINFO);
    avio_wb24(pb, track->par->extradata_size);
    avio_write(pb, track->par->extradata, track->par->extradata_size);

    return update_size(pb, pos);
}
