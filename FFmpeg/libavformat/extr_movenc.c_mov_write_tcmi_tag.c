
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int MOVTrack ;
typedef int AVIOContext ;


 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb16 (int *,int) ;
 int avio_wb32 (int *,int ) ;
 int avio_write (int *,char const*,int ) ;
 int ffio_wfourcc (int *,char*) ;
 int strlen (char const*) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int mov_write_tcmi_tag(AVIOContext *pb, MOVTrack *track)
{
    int64_t pos = avio_tell(pb);
    const char *font = "Lucida Grande";
    avio_wb32(pb, 0);
    ffio_wfourcc(pb, "tcmi");
    avio_wb32(pb, 0);
    avio_wb16(pb, 0);
    avio_wb16(pb, 0);
    avio_wb16(pb, 12);
    avio_wb16(pb, 0);
    avio_wb16(pb, 0x0000);
    avio_wb16(pb, 0x0000);
    avio_wb16(pb, 0x0000);
    avio_wb16(pb, 0xffff);
    avio_wb16(pb, 0xffff);
    avio_wb16(pb, 0xffff);
    avio_w8(pb, strlen(font));
    avio_write(pb, font, strlen(font));
    return update_size(pb, pos);
}
