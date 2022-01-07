
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int AVIOContext ;


 int SEEK_SET ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 int avio_wb32 (int *,scalar_t__) ;

__attribute__((used)) static int64_t update_size(AVIOContext *pb, int64_t pos)
{
    int64_t curpos = avio_tell(pb);
    avio_seek(pb, pos, SEEK_SET);
    avio_wb32(pb, curpos - pos);
    avio_seek(pb, curpos, SEEK_SET);

    return curpos - pos;
}
