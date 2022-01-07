
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int64_t ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int SEEK_SET ;
 int avio_seek (int *,int ,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int ) ;
 int ffio_get_checksum (int *) ;

__attribute__((used)) static void ogg_update_checksum(AVFormatContext *s, AVIOContext *pb, int64_t crc_offset)
{
    int64_t pos = avio_tell(pb);
    uint32_t checksum = ffio_get_checksum(pb);
    avio_seek(pb, crc_offset, SEEK_SET);
    avio_wb32(pb, checksum);
    avio_seek(pb, pos, SEEK_SET);
}
