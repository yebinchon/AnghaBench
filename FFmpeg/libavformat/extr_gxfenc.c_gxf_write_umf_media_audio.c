
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXFStreamContext ;
typedef int AVIOContext ;


 int av_double2int (int) ;
 int avio_wl32 (int *,int ) ;
 int avio_wl64 (int *,int ) ;

__attribute__((used)) static int gxf_write_umf_media_audio(AVIOContext *pb, GXFStreamContext *sc)
{
    avio_wl64(pb, av_double2int(1));
    avio_wl64(pb, av_double2int(1));
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    avio_wl32(pb, 0);
    return 32;
}
