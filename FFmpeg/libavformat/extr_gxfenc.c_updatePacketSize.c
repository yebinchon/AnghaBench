
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int avio_wb32 (int *,int) ;
 int gxf_write_padding (int *,int) ;

__attribute__((used)) static int64_t updatePacketSize(AVIOContext *pb, int64_t pos)
{
    int64_t curpos;
    int size;

    size = avio_tell(pb) - pos;
    if (size % 4) {
        gxf_write_padding(pb, 4 - size % 4);
        size = avio_tell(pb) - pos;
    }
    curpos = avio_tell(pb);
    avio_seek(pb, pos + 6, SEEK_SET);
    avio_wb32(pb, size);
    avio_seek(pb, curpos, SEEK_SET);
    return curpos - pos;
}
