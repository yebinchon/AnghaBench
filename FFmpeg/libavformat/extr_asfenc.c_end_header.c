
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_wl64 (int *,scalar_t__) ;

__attribute__((used)) static void end_header(AVIOContext *pb, int64_t pos)
{
    int64_t pos1;

    pos1 = avio_tell(pb);
    avio_seek(pb, pos + 16, SEEK_SET);
    avio_wl64(pb, pos1 - pos);
    avio_seek(pb, pos1, SEEK_SET);
}
