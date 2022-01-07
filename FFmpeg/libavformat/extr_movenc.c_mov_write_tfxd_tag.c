
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uuid ;
typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_5__ {TYPE_1__* cluster; scalar_t__ end_pts; scalar_t__ frag_start; scalar_t__ start_dts; } ;
struct TYPE_4__ {scalar_t__ cts; scalar_t__ dts; } ;
typedef TYPE_2__ MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb24 (int *,int ) ;
 int avio_wb32 (int *,int ) ;
 int avio_wb64 (int *,scalar_t__) ;
 int avio_write (int *,int const*,int) ;
 int ffio_wfourcc (int *,char*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_tfxd_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    static const uint8_t uuid[] = {
        0x6d, 0x1d, 0x9b, 0x05, 0x42, 0xd5, 0x44, 0xe6,
        0x80, 0xe2, 0x14, 0x1d, 0xaf, 0xf7, 0x57, 0xb2
    };

    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "uuid");
    avio_write(pb, uuid, sizeof(uuid));
    avio_w8(pb, 1);
    avio_wb24(pb, 0);
    avio_wb64(pb, track->start_dts + track->frag_start +
                  track->cluster[0].cts);
    avio_wb64(pb, track->end_pts -
                  (track->cluster[0].dts + track->cluster[0].cts));

    return update_size(pb, pos);
}
