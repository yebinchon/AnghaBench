
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_3__ {int tag; } ;
typedef TYPE_1__ MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int avio_wl32 (int *,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int mov_cenc_write_schi_tag (int *,int *) ;
 int update_size (int *,int ) ;

int ff_mov_cenc_write_sinf_tag(MOVTrack* track, AVIOContext *pb, uint8_t* kid)
{
    int64_t pos = avio_tell(pb);
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "sinf");


    avio_wb32(pb, 12);
    ffio_wfourcc(pb, "frma");
    avio_wl32(pb, track->tag);


    avio_wb32(pb, 20);
    ffio_wfourcc(pb, "schm");
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "cenc");
    avio_wb32(pb, 0x10000);


    mov_cenc_write_schi_tag(pb, kid);

    return update_size(pb, pos);
}
